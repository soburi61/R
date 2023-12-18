#★二元配置分散分析（繰り返しのある場合）対応なし
#表３・２・３

f1<-c(4451,4828,5004,5489)/10
f2<-c(130,130,130,114)/10     
f3<-c(11564,11683,12235,12643)/10
d1<-c(1684,1714,1798,1797)/10;
d2<-c(149,181,212,249)/10
d3<-c(11352,15198,20141,19547)/10
n1<-3; n2<-2; n3<-4
sui<-c(f1,d1); chi<-c(f2,d2); bio<-c(f3,d3)
x<-c(sui,chi,bio)
kuni<-c(rep(c(rep("fra",n3),rep("deu",n3)),n1))
n23<-n2*n3
energy<-c(rep("sui",n23),rep("chi",n23),rep("bio",n23))
print(y<-data.frame(Kuni=kuni,Energy=energy,X=x))
attach(y)
summary(aov(X~Kuni*Energy))


#★二元配置分散分析（繰り返しのある場合）一要因対応あり
#表３・２・６
d1<-c(2.1,1.7,0.2,1.1)
d2<-c(2.1,1.4,0.2,0.9)
d3<-c(2.7,0.9,0.2,0.9)
d4<-c(3.1,0.2,1.6,0.4)
d5<-c(2.9,0.2,1.8,0.5)
d6<-c(2.8,0.6,2.0,0.7)
x<-c(d1,d2,d3,d4,d5,d6)
n1<-2; n2<-3; n3<-4
nen<-c(rep(c(rep("h26",n3),rep("h27",n3),rep("h28",n3)),n1))
n23<-n2*n3
yoto<-c(rep("tak",n23),rep("sho",n23))

#対応のある分析
city<-c(rep(c("tok","yok","chi","sai"),n2),rep(c("kaw","sag","fun","hac"),n2))
summary(aov(x~yoto*nen+Error(city:yoto+city:yoto:nen)))

#★二元配置分散分析（繰り返しのある場合）二要因対応あり
#表３・２・７

d1<-c(2.1,1.7,0.2,1.1)  #前と同じデータ
d2<-c(2.1,1.4,0.2,0.9)  #前と同じデータ
d3<-c(2.7,0.9,0.2,0.9)  #前と同じデータ
d4<-c(3.2,2.2,0.3,2.2)
d5<-c(4.0,2.5,0.4,2.5)
d6<-c(4.9,2.5,1.2,2.4)
x<-c(d1,d2,d3,d4,d5,d6)
n1<-2; n2<-3; n3<-4
nen<-c(rep(c(rep("h26",n3),rep("h27",n3),rep("h28",n3)),n1))
n23<-n2*n3
yoto<-c(rep("tak",n23),rep("sho",n23))

city<-c(rep(c("tok","yok","chi","sai"),n1*n2))
summary(aov(x~yoto*nen+Error(city+city:yoto+city:nen+city:yoto:nen)))




