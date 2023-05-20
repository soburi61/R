month <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
precipitation <- c(60.1, 83.3, 137.9, 145.9, 195.5, 404.9, 400.8, 173.5, 170.4, 79.4, 80.6, 53.6)
temperature <- c(5.7,7.1,10.6,15.7,20.2,23.6,27.3,28.2,24.9,19.1,13.1,7.8)

#グラフの作成
par(mar = c(5, 5, 4, 7))
plot(month, precipitation, type = "b", pch = 16, col = "blue", xlab = "月", ylab = "降水量[mm]", main = "降水量と平均気温の月ごとの変化")
axis(1, at = month, labels = month)

par(new = TRUE)

plot(month, temperature, type = "b", pch = 16, col = "red", xlab = "", ylab = "", axes = FALSE)
axis(4, at = pretty(temperature), labels = pretty(temperature), col.axis = "red")
mtext("平均気温[℃]", side = 4, line = 3, col = "red", cex = 0.8)
box()  # 枠線を追加
legend("topleft", legend = c("降水量[mm]", "平均気温[℃]"), col = c("blue", "red"), lty = c(1, 1), pch = c(16, 16), cex = 0.8)
