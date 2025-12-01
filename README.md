# 설명  
영어 학습 내용을 기록하고 정리하기 위한 레포지토리입니다.  

<br><br>  

### 레포 구조
```
english-study/
 ├─ .github/
 │    ├─ workflows/                  # GitHub Actions 자동화가 들어있는 폴더
 │    │    ├─ daily-question.yml     # 매일 영어 질문을 Issue로 생성하는 워크플로우
 │    │    ├─ issue-feedback.yml     # Issue에 답변하면 자동으로 코칭 피드백을 달아주는 워크플로우
 │    │    └─ update-index.yml       # data 기반으로 RAG 인덱스를 갱신하는 워크플로우
 │    │
 │    ├─ scripts/                    # 위 workflows에서 실행할 Python 스크립트 모음
 │    │    ├─ generate_question.py   # AI가 데일리 영어 질문을 생성하는 스크립트
 │    │    └─ update_index.py        # RAG 인덱스를 생성/업데이트하는 스크립트
 │    │
 │    └─ config/                     # 코치 설정 및 RAG 설정
 │         ├─ coach.md               # 코치 페르소나 + 피드백 규칙 + 질문 생성 규칙을 모두 통합한 설정 파일
 │         └─ rag.json               # RAG 설정 파일 (chunk 크기, embedding 모델 등)
 │
 └─ README.md                        # 레포 전체 설명, 작동 방식, 셋업 안내
```

<br>  

### 
