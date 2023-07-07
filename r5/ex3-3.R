p<-0.975
q<-qnorm(p,0,1)
par(mai = c(1,1,1,1))
x<-seq(-4,4,0.1)
plot(x,dnorm(x,0,1),type="l",col="blue",ylim=c(0,0.4),lwd=2,
     ylab="密度関数",main="標準正規分布の密度関数と分布関数")
subset_x <- x[x <= q]
subset_y <- dnorm(x,0,1)[x <= q]
lines(subset_x, subset_y, type = "h", col = "cyan", lwd = 2)
par(new=T)
plot(x,pnorm(x,0,1),axes=F,type="l",col="red",ylim=c(0,1),lwd=2,xlab="",ylab="")
axis(4)
mtext("分布関数",side=4,line=3)
abline(v=-4, col="orange")
abline(v=q ,col="orange")
abline(h=0,col="orange")
# 範囲の確率を計算
p_text <- paste("z0=",q)
p_text <- paste(p_text,",p=")
p_text <- paste(p_text,p)
text(0, 1, p_text, col = "black", cex = 0.8, pos = 2)
