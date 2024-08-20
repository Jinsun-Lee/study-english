# 1. 열심히 공부
공부 끝나면 바탕화면의 pdf 파일 열어  
</br>


# 2. pdf 파일 처리
파일을 contents 폴더로 이동
```
명령어갱신필요
```
pdf 파일은 커밋 메시지 수정 ㄴㄴ  
</br>


# 3. md 파일 처리
```
cd Desktop/English-template/
sh today.sh
```
pdf 내용을 md 파일에 요약  
md 파일 저장 > docs 폴더로 이동 > 푸시
```
[Docs] 24의 pdf 파일 리뷰
```
</br>


# github에 푸시한 파일 이동
docs에는 md 파일을  
contents에는 pdf 파일 정리할 것
```
cd Desktop/English-template/

git mv [원래 파일명] [변경할 파일명]
git status

git add .
git commit -m "[Refactor] md 파일 위치 변경"
git push origin master
```
만약 [로그인](https://github.com/Jinsun-Lee/Github-template) 필요하면 확인 필요