# データの設定
data <- c(8.5,5,6,5.5,7,4.5,
          7,6,8,9,5,6,
          7,7,7.5,10,5.5,8.5,
          5.5,8,8,8,6.5,6)
data <- c(4.5, 5, 5, 5.5, 5.5, 5.5, 6, 6, 6, 6, 6.5, 7, 7, 7, 7, 7.5, 8, 8, 8, 8, 8.5, 8.5, 9, 10)
mean_value <- mean(data)
print(paste("平均値:", mean(data)))

median_value <- median(data)
print(paste("中央値:", median(data)))

max_value <- max(data)
print(paste("最大値:", max_value))

min_value <- min(data)
print(paste("最小値:", min_value))

print(paste("レンジ:", max_value, "-", min_value, "=", max_value - min_value))

var_value <- var(data)
print(paste("分散:", var(data)))

sd_value <- sd(data)
print(paste("標準偏差:", sd(data)))

quantile_value <- quantile(data)
print(paste("第1四分位数:", quantile(data, 0.25)))
print(paste("第2四分位数:", quantile(data, 0.5)))
print(paste("第3四分位数:", quantile(data, 0.75)))
iqr_value <- IQR(data)
print(paste("四分位範囲:", iqr_value))
print(paste("四分位偏差:", iqr_value/2))