# データの準備
month <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
precipitation <- c(60.1, 83.3, 137.9, 145.9, 195.5, 404.9, 400.8, 173.5, 170.4, 79.4, 80.6, 53.6)

# グラフの作成
plot(month, precipitation, type = "b", pch = 15, col = "blue", xlab = "月", ylab = "降水量[mm]", main = "降水量の月ごとの変化")
axis(1, at = month, labels = month)
