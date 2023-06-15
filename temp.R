# データの定義
x <- c(65.4, 73.6, 61.9, 57.5, 70.8, 63.4, 61.2, 58.3, 71.1, 67.8, 65.4, 65.7, 74.3, 62.1, 66.9)

# 確率密度関数の予測値の計算
d <- density(x)
rx<-range(d$x) #ｘの範囲
ry<-range(d$y)
hist(x,probability=T,xlim=rx,ylim=ry)
lines(d,col="red")
# 確率密度関数の予測値を半透明色で塗りつぶし
polygon(d, col = rgb(1, 0, 0, 0.2), border = NA)
