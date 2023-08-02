library(igraph)
gd <- as.matrix( read.csv( "g1.csv", header=F ) ) # Excelデータを読込み、行列に変換
g1 <- graph_from_adjacency_matrix( gd, mode="undirected" ) # 隣接行列の作成
V(g1)$name <- c( "v1", "v2", "v3", "v4", "v5", "v6" ) # 頂点に名前を付ける
# グラフの描画（手動でグラフを作成可能）
tkplot( g1, edge.color="black", vertex.color="white", vertex.label.color="black" )
print("(c)")
print('(1)')
print(paste(sum(degree( g1 )),'(次数の合計)=',length( E(g1) )*2,'(辺の数*2)'))
print("(2)")
print(shortest_paths( g1, from="v1")$vpath)
print("(3)")
print(paste('連結かどうか:',is_connected( g1 )))
print(paste('連結数:', components( g1 )$no))