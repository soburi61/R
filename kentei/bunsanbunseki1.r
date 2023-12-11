#★一元配置分散分析（対応がない場合）
#表３・１・１

x1<-c(66,75,50,63,81)
x2<-c(74,87,88,71,93)
x3<-c(85,92,78,79,98)
n1<-length(x1); n2<-length(x2); n3<-length(x3)
x<-c(x1,x2,x3)
g<-c(rep("sugaku",n1),rep("kokugo",n2),rep("eigo",n3))
summary(aov(x~g))

#★一元配置分散分析（対応がある場合）
#表３・１・１

n<-length(x1); k<-3
x<-c(x1,x2,x3)
g1<-c(rep("x1",n),rep("x2",n),rep("x3",n))
g2<-rep(c("t1","t2","t3","t4","t5"),k)
summary(aov(x~g1+g2))

#★二元配置分散分析（繰り返しのない場合）
#表３・２・１

x1<-c(432,5489,1797,2005,3438)
x2<-c(612,491,3474,2710,554)
x3<-c(46,91,700,343,84)
x4<-c(1,114,249,8,4957)
x5<-c(4035,12643,19547,4949,4361)
n<-length(x1); k<-5;
x<-c(x1,x2,x3,x4,x5)
g1<-c(rep("x1",n),rep("x2",n),rep("x3",n),rep("x4",n),rep("x5",n))
g2<-rep(c("k1","k2","k3","k4","k5"),k)
summary(aov(x~g1+g2))

#課題１
x1<-c(3.42,3.84,3.96,3.76)
x2<-c(3.17,3.63,3.47,3.44,3.39)
x3<-c(3.64,3.72,3.91)

n1<-length(x1); n2<-length(x2); n3<-length(x3)
x<-c(x1,x2,x3)
g<-c(rep("A",n1),rep("B",n2),rep("C",n3))
#print(summary(aov(x~g)))


#課題2
x1<-c(81,81,78,75)
x2<-c(87,84,84,82)
x3<-c(70,69,65,64)
x4<-c(74,71,70,68)
x5<-c(68,65,64,63)
x6<-c(67,64,63,61)

n<-length(x1); k<-6
x<-c(x1,x2,x3,x4,x5,x6)
g1<-c(rep("x1",n),rep("x2",n),rep("x3",n),rep("x4",n),rep("x5",n),rep("x6",n))
g2<-rep(c("t1","t2","t3","t4"),k)
#print(summary(aov(x~g1+g2)))

#課題3
x1<-c(9,17,12,16)
x2<-c(1,21,16,11)
x3<-c(7,19,6,9)
x4<-c(11,21,16,11)
n<-length(x1); k<-4;
x<-c(x1,x2,x3,x4)
g1<-c(rep("x1",n),rep("x2",n),rep("x3",n),rep("x4",n))
g2<-rep(c("k1","k2","k3","k4"),k)
print(summary(aov(x~g1+g2)))
