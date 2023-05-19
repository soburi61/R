data <- c(4.5, 5, 5, 5.5, 5.5, 5.5, 6, 6, 6, 6, 6.5, 7, 7, 7, 7, 7.5, 8, 8, 8, 8, 8.5, 8.5, 9, 10)
#data <- c(3.6,4.1,4.2,4.4,4.5,4.5,4.8,4.8,5.1,5.2,5.6,5.7,5.8,6.2,6.3,6.7,6.9,7.3,7.5,8.1)
windows()  # 新しいウィンドウを開く
par(oma = c(0, 0, 0, 2))
hist(data, main="", xlab="Value", ylab="Frequency")
dcumsum <- cumsum(hist(data, plot=FALSE)$counts)
axis(1)   # x
axis(2)   # left y
par(new=TRUE)
plot(hist(data, plot=FALSE)$mids, dcumsum, type="b", xlab="", ylab="", axes=FALSE, pch=19)
axis(side=4, at=pretty(range(dcumsum)), labels=pretty(range(dcumsum)))
mtext("ruiseki", side=4, line=3)
axis(4)
box()
