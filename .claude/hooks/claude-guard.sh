#!/usr/bin/env bash
# PreToolUse 가드: 클로드가 만드는 커밋은 Claude <noreply@anthropic.com> 명의로만 남긴다.
# 명의 자체는 settings.json 의 env(GIT_AUTHOR_*/GIT_COMMITTER_*)가 강제한다. env 는 git config 보다 우선한다.
# 이 가드는 그 env 를 우회하는 경로(--author, 인라인 GIT_AUTHOR_*=, env 해제)만 막는다.
# 토큰·자격증명은 다루지 않는다. push 는 세션에 연결된 GitHub 자격증명으로 나간다.
# exit 2 는 도구 호출을 막고 stderr 를 클로드에게 돌려준다.
set -uo pipefail

payload=$(cat)
if command -v jq >/dev/null 2>&1; then
  cmd=$(printf '%s' "$payload" | jq -r '.tool_input.command // ""')
else
  py=$(command -v python3 || command -v python || true)
  [ -n "$py" ] || { echo "차단: claude-guard 가 페이로드를 읽지 못했다(jq/python 없음)." >&2; exit 2; }
  cmd=$(printf '%s' "$payload" | "$py" -c 'import sys,json; print((json.load(sys.stdin).get("tool_input") or {}).get("command") or "")')
fi
norm=$(printf '%s' "$cmd" | tr '\n' ' ')

deny() { printf '%s\n' "$1" >&2; exit 2; }

case "$norm" in *git*) ;; *) exit 0 ;; esac

if printf '%s' "$norm" | grep -Eq -- '--author([= ]|$)'; then
  deny "차단: --author 로 커밋 명의를 바꾸지 않는다. 클로드 커밋은 Claude <noreply@anthropic.com> 으로만 남긴다."
fi
if printf '%s' "$norm" | grep -Eq '(^|[[:space:];&|(])(export[[:space:]]+)?GIT_(AUTHOR|COMMITTER)_(NAME|EMAIL)=|unset[[:space:]]+[^;&|]*GIT_(AUTHOR|COMMITTER)_|env[[:space:]]+(-u|--unset)'; then
  deny "차단: GIT_AUTHOR_*/GIT_COMMITTER_* 를 덮어쓰거나 지우지 않는다. 명의는 settings.json env 가 정한다."
fi
exit 0
