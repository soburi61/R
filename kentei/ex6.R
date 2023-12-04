#多群検定＋多重比較


#課題データ
#１
print("6-1")
x1<-c(50,53,80,82,74)
x2<-c(73,68,81,85)
x3<-c(85,93,88)
x<-c(x1,x2,x3)
n1<-length(x1)
n2<-length(x2)
n3<-length(x3)
k<-3
g<-rep(1:k,c(n1,n2,n3)) #g<-c(rep(1,n1),rep(2,n2),rep(3,n3))
print(kruskal.test(x~g))
print(pairwise.wilcox.test(x,g,p.adj="bonferroni",exact=F))
#2
print("6-2")
x1<-c(180,150,144)
x2<-c(193,189,178)
x3<-c(180,186,166)
x4<-c(201,190,173)
x<-cbind(x1,x2,x3,x4)
print(friedman.test(x))
n<-length(x1)
k<-4
g<-rep(1:k,n)
print(pairwise.wilcox.test(x,g,p.adj="holm",exact=F,paired=T))

#３
print("6-3")
x1<-c(10.88,14.60,6.30,2.15,4.80,15.20)
x2<-c(2.86,2.02,9.27,9.86,3.66,5.48)
x3<-c(3.82,4.21,9.10,6.99,22.75,2.18)
x4<-c(1.95,3.41,1.65,1.63,3.29,3.66)
x<-c(x1,x2,x3,x4)
n1<-length(x1)
n2<-length(x2)
n3<-length(x3)
n4<-length(x4)
k<-4
g<-rep(1:k,c(n1,n2,n3,n4))
print(kruskal.test(x~g))

print(pairwise.wilcox.test(x,g,p.adj="holm",exact=F))
print("6-4")
#４
x1<-c(1,5,3,5,5)
x2<-c(4,1,1,5,2)
x3<-c(5,5,5,4,5)
x4<-c(2,1,4,2,3)
x5<-c(4,4,5,4,4)
x6<-c(3,3,3,3,3)
x7<-c(1,2,2,3,1)
x<-cbind(x1,x2,x3,x4,x5,x6,x7)
print(friedman.test(x))

n<-length(x1)
k<-7
g<-rep(1:k,n)
print(pairwise.wilcox.test(x,g,p.adj="bonferroni",exact=F,paired=T))


