p<-0.95
q<-qchisq(1-p,5)
par(mai = c(1,1,1,1))
x<-seq(0,20,0.1)
curve(dchisq(x,5),0,20,col="blue",main="カイ2乗分布グラフ",lty=1,ylim=c(0.0,0.2))
subset_x <- x[x >= q]
subset_y <- dchisq(x,5)[x >= q]
lines(subset_x, subset_y, type = "h", col = "cyan", lwd = 2)
par(new=T)
plot(x,pchisq(x,5),axes=F,type="l",col="red",ylim=c(0,1),lwd=2,xlab="",ylab="",lty=2)
axis(4)
mtext("分布関数",side=4,line=3)
abline(v=q ,col="orange")
abline(h=0,col="orange")
# 範囲の確率を計算
labels<-c("dchisq","pchisq")
cols<-c("blue","red")
lts<-c(1,2)
legend("right",legend=labels, col=cols,lty=lts)
print(paste("X0=",q))
