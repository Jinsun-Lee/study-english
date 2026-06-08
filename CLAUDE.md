### 프로젝트 개요
- 이 레포지토리는 OPIc(영어 말하기 시험) 대비를 위한 영어 학습 프로젝트다.
- Claude가 영어 코치 역할을 하며, 문제 출제·답변 피드백·표현 정리·출제 경향 관리를 수행한다.
- 모든 설정 파일은 `.github/claude/`에, 학습 데이터는 `.github/`의 하위 폴더에 저장한다.

<br>

### 폴더 구조
- `.github/claude/`: Claude가 워크플로우를 수행할 때 참고하는 설정 파일
- `.github/answers/`: 사용자가 작성한 영어 답변 스크립트 (`yyyy_mm_dd_내용.md`)
- `.github/expressions/`: 복습용 표현 정리 파일 (한국어 파일명, 날짜 없음)
- `.github/trends/`: OPIc 최근 출제 경향 파일 (`yyyy_mm_dd.md`)

<br>

### 설정 파일 안내 (.github/claude/)
- `formatting.md`: 커밋 메시지 포맷(`[태그] 한국어 설명`)과 md 파일 포맷팅 규칙
- `workflow_answers.md`: 답변 파일 이름 규칙(`yyyy_mm_dd_내용.md`)과 영어 코치 페르소나·피드백 구조·질문 생성 규칙
- `workflow_expressions.md`: 사용자가 복습할 표현을 알려주면 `.github/expressions/`에 파일 생성하고 `README.md`에 추가하는 워크플로우
- `workflow_trends.md`: 사용자가 출제 경향을 알려주면 `.github/trends/`에 날짜 파일 생성, 문제 출제 시 최신 경향 파일 하나만 참조하는 워크플로우
- `workflow_reading.md`: 사용자가 영어 글을 읽고 싶어 하면 번역 대신 읽기 코치로 동작하는 워크플로우(능동 읽기 루프·연구 근거 기반 학습법)

<br>

### 작업 시 주의사항
- 새 작업을 시작하기 전에 해당 워크플로우 파일을 반드시 읽는다.
- 파일 생성·수정 시 `formatting.md`의 포맷팅 규칙을 따른다.
- Co-Authored-By 라인을 커밋 메시지에 넣지 않는다.
- 날짜 구분자는 하이픈(`-`)이 아니라 언더스코어(`_`)를 사용한다.