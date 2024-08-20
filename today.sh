#!/bin/bash

# 해당 레포로 들어온 다음 
# sh docs/today.sh

# 현재 날짜를 YYYY-MM-DD 형식으로 변경
current_date=$(date +"%Y-%m-%d")

# 설정: 파일을 생성할 경로 (여기서 원하는 경로로 변경 가능)
#target_dir= "contents"

# 파일 이름 
#filename="${target_dir}/${current_date}.md"
filename="${current_date}.md"

# 디렉토리가 존재하지 않으면 생성
#if [ ! -d "$target_dir" ]; then
#    mkdir -p "$target_dir"
#fi

# 파일이 이미 존재하는지 확인
if [ -e "$filename" ]; then
    echo "이미 존재: $filename"
else
    # 빈 파일 생성
    touch "$filename"
    echo "새로 생성: $filename"
fi

