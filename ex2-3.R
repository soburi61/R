tenki <- c("hare", "kumori", "hare", "hare", "kumori", "ame", "hare")
print(table(tenki))
counts <- table(tenki)
percentages <- prop.table(counts) * 100
colors <- c("orange", "gray", "blue", "green", "yellow", "lightblue")
pie(percentages, col = colors, main = "ある週の天気", border = "white", clockwise = TRUE, labels = paste0( c("晴れ", "曇り", "雨"),round(percentages, 1)))
par(new = TRUE)
pie(1, radius = 0.5, col = "white", border = "white", labels = "")
