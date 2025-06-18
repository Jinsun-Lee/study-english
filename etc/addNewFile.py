from datetime import datetime
import pytz

def to_git_date_format(ymd_str):
    if len(ymd_str) != 6 or not ymd_str.isdigit():
        return "형식 오류"
    try:
        year = 2000 + int(ymd_str[:2])
        month = int(ymd_str[2:4])
        day = int(ymd_str[4:6])
        kst = pytz.timezone('Asia/Seoul')
        now_kst = datetime.now(kst)
        dt = datetime(year, month, day, now_kst.hour, now_kst.minute, now_kst.second)
        dt_kst = kst.localize(dt)
        return dt_kst.strftime("%b %d %H:%M:%S %Y %z")
    except ValueError:
        return "유효하지 않은 날짜입니다"

user_input = "250414"
tmp = to_git_date_format(user_input)
print("git add ")
print(f"\n\nGIT_COMMITTER_DATE=\"{tmp}\" git commit --date \"{tmp}\" -m \"[docs] \"\n")
print("git push -f origin master")