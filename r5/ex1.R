par(mai = c(1,1,1,1))
x<-seq(-4,4,0.1)
plot(x,dnorm(x,0,1),type="l",col="blue",ylim=c(0,0.4),lwd=2,
     ylab="密度関数",main="標準正規分布の密度関数と分布関数")
subset_x <- x[x >= -2 & x <= 1]
subset_y <- dnorm(x,0,1)[x >= -2 & x <= 1]
lines(subset_x, subset_y, type = "h", col = "cyan", lwd = 2)
par(new=T)
plot(x,pnorm(x,0,1),axes=F,type="l",col="red",ylim=c(0,1),lwd=2,xlab="",ylab="")
axis(4)
mtext("分布関数",side=4,line=3)
abline(v=-2, col="orange")
abline(v=1,col="orange")
abline(h=0,col="orange")
# 範囲の確率を計算
p <- diff(pnorm(c(-2, 1)))
p_text <- paste("x = -2 ~ 1, p =", round(p, 3))
text(0, 1, p_text, col = "black", cex = 0.8, pos = 2)