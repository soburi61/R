# 乱数の個数と組数
num_randoms <- 10000
num_groups <- 100

# 0～1の範囲の一様乱数を生成し組に分ける
randoms <- runif(num_randoms)
grouped_randoms <- matrix(randoms, nrow = num_groups)

# 各組の平均値を計算する
means <- apply(grouped_randoms, 2, mean)

# 平均値を標準化する
st_means <- scale(means)

# 確率密度関数を推定する
de <- density(st_means, n = 101 ,from=-4,to=4)

# プロットする
x <- c(-4,4)
y <- c(0,0.5)

plot(de, xlim = x, ylim = y, col = "blue", main = "中心極限定理の例", xlab = "x", ylab = "")
par(new = TRUE)
plot(dnorm, xlim = x, ylim = y, xlab = "", ylab = "", col = "red", add = TRUE)

x_polygon <- c(de$x, rev(de$x))
y_polygon <- c(de$y, rep(0, length(de$y)))
polygon(x_polygon, y_polygon, col = rgb(0, 0, 1, alpha = 0.5), border = NA, angle = 45)

y_polygon <- c(dnorm(de$x), rep(0, length(de$x)))
polygon(x_polygon, y_polygon, col = rgb(1, 0, 0, alpha = 0.5), border = NA, angle = 45)

labels <- c("密度関数推定値", "標準正規分布")
legend("topleft", legend = labels, col = c("red", "blue"), lty = c(1, 1))


# 誤差を計算して表示する
errors <- abs(de$y-dnorm(de$x))
p_text <- paste("error=",round(mean(errors),4))
text(0.5, 0.1, p_text, col = "black", cex = 0.8, pos = 2)