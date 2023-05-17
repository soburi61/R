#身長のデータ
x <- c(176.1, 172.3, 165.3, 168.9, 177.8, 180.2, 173.7, 163.9, 170.2, 174.3, 169, 176.1, 171.3, 175.6, 168.2)
#体重のデータ
y <- c(65.4, 57.5, 61.2, 67.8, 74.3, 73.6, 70.8, 58.3, 65.4, 62.1, 61.9, 63.4, 71.1, 65.7, 66.9)
#学生の番号
students <- c(1:15)

#グラフの作成
plot(x, y, pch = students, col = students, xlab = "身長", ylab = "体重", main = "身長と体重の散布図と回帰直線", yaxp=c(50, 90, 20))

#回帰直線の追加
fit <- lm(y ~ x)
abline(fit, col = "darkorange", lwd = 2)

#凡例の追加（学生の番号）
legend("bottomright", legend = students, pch = students, col = students, title = "学生番号")

#切片と傾きの取得
intercept <- fit$coefficient[1]
slope <- fit$coefficient[2]
print(paste("切片:", intercept))
print(paste("傾き:", slope))

fit_summary <- summary(fit)
print(paste("身長と体重の決定係数:", fit_summary$r.squared))

#------------

#国語のデータ
japanese <- c(84, 75, 29, 39, 73, 62, 71, 85, 88, 76, 52, 60, 77, 77, 72, 87)

#数学のデータ
math <- c(78, 72, 45, 66, 85, 70, 67, 97, 82, 81, 60, 73, 69, 90, 83, 86)

fit2 <- lm(math ~ japanese)
fit2_summary <- summary(fit2)
print(paste("国語と数学の決定係数:", fit2_summary$r.squared))
