# ============================================================
# new_test3.R
# renv.lockに含まれておらず、test.Rでも使われていない
# パッケージ（scales）を使ったサンプルスクリプト
# ============================================================

library(scales)

# --- scales の例 ---

# number()：数値を読みやすい形式にフォーマット
cat("--- scales: number() で数値フォーマット ---\n")
print(number(1234567.89, big.mark = ",", decimal.mark = "."))

# percent()：数値をパーセント表示に変換
cat("\n--- scales: percent() でパーセント表示 ---\n")
scores <- c(0.123, 0.456, 0.789, 1.0)
print(percent(scores, accuracy = 0.1))

# dollar()：数値を通貨形式に変換
cat("\n--- scales: dollar() で通貨表示 ---\n")
prices <- c(1000, 25000, 980000)
print(dollar(prices, prefix = "¥", big.mark = ","))

# label_number()：ラベル用フォーマット関数
cat("\n--- scales: label_number() で単位付きラベル ---\n")
formatter <- label_number(scale = 0.001, suffix = "千")
print(formatter(c(1000, 5000, 10000)))