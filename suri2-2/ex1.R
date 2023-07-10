# コインを100回投げる
num_trials <- 100
coin_flips <- rbinom(num_trials, 1, 0.5)

# 表のでる確率を計算する
head_count <- cumsum(coin_flips)
prob_heads <- head_count / (1:num_trials)

# グラフを描画する
plot(1:num_trials, prob_heads, type = "o", pch = 1, xlab = "試行回数", ylab = "表のでる確率", main = "コインの表のでる確率")

# 横の線を引く
abline(h = 0.5, col = "red", lty = 2)
