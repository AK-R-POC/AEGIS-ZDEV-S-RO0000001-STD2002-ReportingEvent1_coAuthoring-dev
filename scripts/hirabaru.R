# ============================================================
# new_test4.R
# renv.lockに含まれておらず、test.Rでも使われていない
# パッケージ（fs）を使ったサンプルスクリプト
# DEVに入ってない?
# ============================================================

library(fs)

# --- fs の例 ---

# path()：パスを組み立てる
cat("--- fs: path() でパスを組み立て ---\n")
my_path <- path("Users", "username", "project", "data.csv")
print(my_path)

# path_home()：ホームディレクトリのパスを取得
cat("\n--- fs: path_home() でホームディレクトリ ---\n")
print(path_home())

# path_ext()：拡張子を取得
cat("\n--- fs: path_ext() で拡張子を取得 ---\n")
files <- c("data.csv", "report.Rmd", "script.R", "image.png")
print(path_ext(files))

# path_file()：ファイル名だけを取得
cat("\n--- fs: path_file() でファイル名を取得 ---\n")
full_paths <- c(
  "/home/user/project/data.csv",
  "/home/user/project/report.Rmd"
)
print(path_file(full_paths))

# path_dir()：ディレクトリ部分だけを取得
cat("\n--- fs: path_dir() でディレクトリを取得 ---\n")
print(path_dir(full_paths))