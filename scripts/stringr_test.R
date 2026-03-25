# ============================================================
# stringr_test.R
# パッケージ（stringr, lubridate）を使ったサンプルスクリプト
# ============================================================

library(stringr)
library(lubridate)

# str_to_upper()で文字列を大文字に変換
print(str_to_upper("hello, r world!"))

# --- lubridate の例 ---
# today()で今日の日付を取得して表示
today_date <- today()
print(str_c("今日の日付: ", as.character(today_date)))

