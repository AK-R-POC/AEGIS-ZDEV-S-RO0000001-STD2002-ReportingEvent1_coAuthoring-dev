# ============================================================
# new_test6.R
# renv.lockに含まれていないパッケージ（praise）を使ったサンプル
# ============================================================

library(praise)

# --- praise の例 ---

# praise()：ランダムな褒め言葉を生成する
cat("--- praise: ランダムな褒め言葉を5回生成 ---\n")
for (i in 1:5) {
  cat(i, ":", praise(), "\n")
}

# テンプレートを指定して褒め言葉を生成
cat("\n--- praise: テンプレート指定 ---\n")
print(praise("Your R code is ${adjective}!"))
print(praise("${EXCLAMATION}! What a ${adjective} script!"))
print(praise("You are ${creating} something ${adjective}!"))
