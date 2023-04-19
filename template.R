# データの設定
data <- c(4681, 8025, 7659, 7388, 6973, 7245, 6332)

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
print(paste("第1四分位数:", quantile_value[2]))
print(paste("第2四分位数:", quantile_value[3]))
print(paste("第3四分位数:", quantile_value[4]))
iqr_value <- IQR(data)
print(paste("四分位範囲:", iqr_value))
print(paste("四分位偏差:", iqr_value/2))