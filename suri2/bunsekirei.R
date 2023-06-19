data<-read.csv("yakyu.csv")
y<-data$daten
x1<-data$anda
x2<-data$homerun
x3<-data$sanshin
x4<-data$gida
df<-data.frame(x1,x2,x3,x4)
r1<-lm(y~.,data=df)
summary(r1)
AIC(r1)
extractAIC(r1)
step(r1)
#Œˆ’èŒW”Ac·•½•û˜a‚ğ‹‚ß‚éi‹³‰È‘QÆj

r2<-lm(y~.^2,data=df)
summary(r2)
AIC(r2)
extractAIC(r2)
step(r2)
#Œˆ’èŒW”Ac·•½•û˜a‚ğ‹‚ß‚éi‹³‰È‘QÆj



