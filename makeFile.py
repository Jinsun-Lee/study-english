import os
from datetime import datetime, timedelta

# 시작일과 종료일 설정
start_date = datetime(2025, 3, 12)
end_date = datetime(2025, 4, 17)

# 사용자 바탕화면 경로에서 'del' 폴더 지정
desktop_path = os.path.join(os.path.expanduser("~"), "Desktop", "del")
os.makedirs(desktop_path, exist_ok=True)

# 날짜별로 파일 생성
current_date = start_date
while current_date <= end_date:
    file_name = f"{current_date.strftime('%Y-%m-%d-')}.md"
    file_path = os.path.join(desktop_path, file_name)

    # 이미 파일이 존재하지 않을 경우에만 생성
    if not os.path.exists(file_path):
        with open(file_path, 'w', encoding='utf-8') as f:
            pass  # 빈 파일 생성

    current_date += timedelta(days=1)

print("모든 날짜별 .md 파일 생성 완료.")