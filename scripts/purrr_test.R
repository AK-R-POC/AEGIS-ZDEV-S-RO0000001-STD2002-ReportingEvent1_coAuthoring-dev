# ============================================================
# purrr_test.R
# パッケージ（purrr, tidyr）を使ったサンプルスクリプト
# ============================================================

library(purrr)
library(tidyr)

# --- purrr の例 ---
# map()でリストの各要素に関数を適用する
fruits <- list("apple", "banana", "cherry")

# 各フルーツ名を大文字に変換して表示
upper_fruits <- map(fruits, toupper)
print("--- purrr: map() で大文字変換 ---")
print(upper_fruits)

# map_chr()で文字列ベクトルとして返す
result <- map_chr(fruits, ~ paste0("フルーツ: ", .x))
print("--- purrr: map_chr() で文字列生成 ---")
print(result)

# --- tidyr の例 ---
# unite()で複数列を1つに結合する
df <- data.frame(
  姓 = c("山田", "鈴木", "田中"),
  名 = c("太郎", "花子", "次郎")
)

print("--- tidyr: 結合前のデータフレーム ---")
print(df)

# 姓と名を結合してフルネーム列を作る
df_united <- tidyr::unite(df, col = "フルネーム", 姓, 名, sep = " ")
print("--- tidyr: unite() でフルネーム生成 ---")
print(df_united)