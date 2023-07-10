# サイコロの面の数
num_faces <- 6

# サイコロの出る目の母平均
population_mean <- 3.5

# 復元抽出の回数
num_trials <- 100

# 平均値の誤差を格納するベクトル
errors <- numeric(num_trials)

# 復元抽出を繰り返し行い,平均値の誤差を計算する
for (i in 1:num_trials) {
  samples <- sample(1:num_faces, i*100, replace = TRUE)
  sample_mean <- mean(samples)
  errors[i] <- (sample_mean - population_mean)^2
}

# グラフを描画する
plot(1:num_trials, errors, type = "l", xlab = "反復回数(x百回)", ylab = "誤差", main = "サイコロの出る目の平均値の誤差")
