---
tag: 지침, 규칙, 프로젝트
description: Claude가 참고하는 프로젝트 전체 지침
---

### 프로젝트 개요
- 이 레포지토리는 시험 준비가 아니라 영어 회화 연습을 목적으로 하는 영어 학습 프로젝트다.
- Claude가 영어 대화 상대이자 코치 역할을 하며, 회화 연습·답변 피드백·표현 정리를 수행한다.
- 모든 설정 파일은 `.github/claude/`에, 학습 데이터는 `.github/`의 하위 폴더에 저장한다.

<br>

### 폴더 구조
- `.github/` 하위 폴더 구조는 [`.github/README.md`](.github/README.md)를 참고한다.

<br>

### 설정 파일 안내 (.github/claude/)
- `formatting.md`: 커밋 메시지 포맷(`[태그] 한국어 설명`), md 파일 포맷팅 규칙, answers·expressions·trends 파일 생성 규칙
- `workflow_answers.md`: 영어 코치 페르소나와 답변 교정·피드백 구조
- `workflow_questions.md`: 회화 연습 질문 생성 규칙과 사용자 배경 정보
- `workflow_practice.md`: 단어 없이 구조로 말하는 회화 연습 방법론과 기록 규칙

<br>

### 작업 시 주의사항
- 별도 브랜치를 만들지 않고 항상 master 브랜치에 바로 커밋한다.
- 새 작업을 시작하기 전에 해당 워크플로우 파일을 반드시 읽는다.
- 파일 생성·수정 시 `formatting.md`의 포맷팅 규칙을 따른다.
- 사용자 배경 정보는 `workflow_questions.md`에서만 관리하고, 다른 파일은 그 내용과 일치시킨다.
- 커밋 명의는 `Claude <noreply@anthropic.com>` 로 남긴다(`.claude/settings.json` env 가 강제). Co-Authored-By 라인은 커밋 메시지에 따로 넣지 않는다.
- 날짜 구분자는 하이픈(`-`)이 아니라 언더스코어(`_`)를 사용한다.