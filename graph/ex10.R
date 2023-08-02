library( igraph ) # igraphパッケージの利用
A <- as.matrix( read.csv( "g4.csv", header=F ) ) # グラフのExcelデータを読込み、行列に変換
g4 <- graph_from_adjacency_matrix( A, mode="undirected", weighted=T ) # 隣接行列の作成
V( g4 )$name <- c( "v1", "v2", "v3", "v4", "v5", "v6", "v7", "v8" ) # 頂点に名前を付ける
tkplot( g4, edge.width=E(g4)$weight, edge.color="black",vertex.color="white",
        vertex.label.color="black",layout=layout_in_circle ) # 辺の幅を重みに対応、頂点を円状に表示

#----
g4_mst <- mst( g4 ) # 最小全域木を求める 
tkplot( g4_mst, edge.width=E(g4_mst)$weight, edge.color="black",
        vertex.color="white", vertex.label.color="black", layout=layout_in_circle )
# 辺の幅を重みに対応、頂点を円状に表示
print("辺の重みの和")
print(sum( E(g4)$weight )) # 元のネットワークの辺の重みの和
print("辺の重みの内訳")
print(E(g4))
print(E(g4)$weight) # 元のネットワークの辺と重みの内訳




