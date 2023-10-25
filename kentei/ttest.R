#サンプル平均: avr
#帰無仮説の母平均: myu
#サンプルの標準偏差: u
#サンプルサイズ: n
#有意水準: alfa
#検定の種類: side 0のとき両側

ttest<-function(avr,myu,u,n,alfa,side)
{
  t<-abs(sqrt(n)*abs(avr-myu)/u)  #検定統計量
  cat("検定統計量t\n")
  print(t)
  pr<-1-pt(t,n-1)
  if(side==0) pr<-2*pr           #両側検定
  if(pr<alfa)         #判定
    kekka<-"帰無仮説を棄却" else kekka<-"帰無仮説を採択"
  cat("検定結果\n")
  print(kekka)
  cat("確率\n")
  print(pr)
}


#関数化
#avr サンプルの平均
#myu 母平均 本来の平均
#sgm 母集団の標準偏差 母分散はこれからわかる
#n サンプルサイズ
#alfa 有意水準
#side 1のとき右側検定 0のとき両側
ztest1<-function(avr,myu,sgm,n,alfa,side)
{
  z<-abs(sqrt(n)*(avr-myu)/sgm)  #検定統計量
  pr<-1-pnorm(z)
  if(side==0) pr<-2*pr           #両側検定
  if(pr<alfa)         #判定
    kekka<-"帰無仮説を棄却" else kekka<-"帰無仮説を採択"
  print(kekka)
  return(pr)
}

#母比率の検定
ztest<-function(z,alfa,side)
{
  pr<-1-pnorm(abs(z))
  if(side==0) pr<-2*pr           #両側検定
  if(pr<alfa)         #判定
    kekka<-"帰無仮説を棄却" else kekka<-"帰無仮説を採択"
    print(kekka)
    return(pr)
}
#　母比率の検定
#問２・３・３
n<-100
p<-68/n
p0<-1/2
z<-sqrt(n)*(p-p0)/sqrt(p0*(1-p0))
print(ztest(z,0.05,0))

ftest<-function(u1,u2,n1,n2,alfa,side)
{
  f<-u2/u1  #検定統計量
  pr<-1-pf(f,n2-1,n1-1)
  if(u2<u1) pr<--pr+1
  if(side==0)  pr<-2*pr     #両側検定
  if(pr<alfa)         #判定
    kekka<-"帰無仮説を棄却" else kekka<-"帰無仮説を採択"
  print(kekka)
  
  return(list(f,pr))
}