# .claude/hooks

## 커밋 명의
1. 클로드가 만드는 커밋은 author·committer 모두 `Claude <noreply@anthropic.com>` 으로 남긴다.
2. 강제는 `.claude/settings.json` 의 `env`(`GIT_AUTHOR_NAME/EMAIL`, `GIT_COMMITTER_NAME/EMAIL`)가 한다. 이 환경변수는 git config 의 `user.name/email` 보다 우선한다.
3. `claude-guard.sh` 는 `PreToolUse` 훅이다. `--author`, 인라인 `GIT_AUTHOR_*=` 처럼 env 를 우회하는 명령만 막는다.

## 토큰
1. 토큰·개인 키·PAT 를 요구하는 설정은 두지 않는다.
2. push·PR 은 세션에 연결된 GitHub 자격증명으로 나간다. 클라우드 세션은 세션 git 프록시, 로컬은 머신의 git 자격증명이다.
3. Actions 워크플로는 기본 `GITHUB_TOKEN` 만 쓴다. 레포 secrets 에 `APP_ID`/`APP_PRIVATE_KEY` 를 둘 필요가 없다.
