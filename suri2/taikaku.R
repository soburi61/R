# データの読み込み
d <- read.csv("C:/git/R/suri2/taikaku1.csv")
z <- d$shincho
x1 <- d$taiju
x2 <- d$kyoui
rg <- lm(z ~ x1 + x2)
#rg <- lm(z ~ x1 + x2 + x1*x2)
# 結果の要約と決定係数の表示
print("相互作用なし")
print(summary(rg))
print("相互作用あり")
print(summary(lm(z ~ x1 + x2 + x1 * x2)))

# 3Dプロット
library(scatterplot3d)

# プロット
s <- scatterplot3d(x1, x2, z, xlab = "体重", ylab = "胸囲", zlab = "身長", pch = 21, bg = "green", xlim = range(x1), ylim = range(x2), zlim = range(z))

# 回帰平面
s$plane3d(rg, col = "green")

# 回帰平面上の予測点と元のデータ点を結ぶ
predicted_points <- predict(rg)
for (i in 1:length(x1)) {
  p1 <- s$xyz.convert(x1[i], x2[i], z[i])
  p2 <- s$xyz.convert(x1[i], x2[i], predicted_points[i])
  segments(p1$x, p1$y, p2$x, p2$y, col = "red")
}

# 残差のプロット
residuals <- residuals(rg)
s$points3d(x1, x2, residuals, col = "blue", pch = 21)
