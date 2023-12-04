#例題（クラスカル・ウォリス検定）表２．３．１⇒多重比較へ
x1<-c(75,61,82,52,48,76)
x2<-c(45,38,35,65,50)
x3<-c(42,51,39,49)
x<-c(x1,x2,x3)
n1<-length(x1)
n2<-length(x2)
n3<-length(x3)
k<-3
g<-rep(1:k,c(n1,n2,n3)) #g<-c(rep(1,n1),rep(2,n2),rep(3,n3))
kruskal.test(x~g)

pairwise.wilcox.test(x,g,p.adj="bonferroni",exact=F)

#問5（クラスカル・ウォリス検定）⇒多重比較へ
x1<-c(13,10,12,19)
x2<-c(21,26,15,14,21)
x3<-c(27,28,21)
x4<-c(13,16,19,10,12,19)
x<-c(x1,x2,x3,x4)
n1<-length(x1)
n2<-length(x2)
n3<-length(x3)
n4<-length(x4)
k<-4
g<-rep(1:k,c(n1,n2,n3,n4))
kruskal.test(x~g)

pairwise.wilcox.test(x,g,p.adj="holm",exact=F)

#例題（フリードマン検定）表２．３．３⇒多重比較へ
y1<-c(8.8,8.6,9.2,9.7,9.3,7.9)
y2<-c(7.3,7.1,8.7,9.1,7.8,8.2)
y3<-c(7.7,6.3,8.9,8.5,8.1,7.2)
x<-cbind(y1,y2,y3)
friedman.test(x)

n<-length(x1)
k<-3
g<-rep(1:k,n)
pairwise.wilcox.test(x,g,p.adj="bonferroni",exact=F,paired=T)

#問４（フリードマン検定）表２．３．４⇒多重比較へ
x1<-c(87.5,46.4,42.3,78.3,5.5,7.5,4.1)
x2<-c(194.2,58.4,60.1,76.3,19.5,23.3,0.9)
x3<-c(108.4,55.7,47.2,106.9,7.4,13.7,0.8)
x<-cbind(x1,x2,x3)
friedman.test(x)

n<-length(x1)
k<-3
g<-rep(1:k,n)
pairwise.wilcox.test(x,g,p.adj="bonferroni",exact=F,paired=T)
