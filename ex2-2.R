# データの定義
labels <- c("北米", "中南米", "ヨーロッパ", "アジア", "オセアニア", "アフリカ", "不明")
sizes <- c(63613, 9996, 16087, 86849, 7879, 6220, 28836)
# 色の定義
colors <- c("#3366CC", "#33CC33", "#FFCC33", "#FF6699", "#CCCCCC", "#FF9933", "#999999")
windows()
# 割合をグラフ内に表示
percent <- round(prop.table(sizes)*100, 1)
percent_labels <- paste0(labels, percent, "%")
pie(sizes, labels = percent_labels, col = colors,border="white",main="某県に泊まった観光客")
par(new=T)
pie(1,radius=0.5,col="white",border="white",labels="")
