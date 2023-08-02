A <- as.matrix( read.csv( "g2.csv", header=F ) )
A_name <- c( "v1", "v2", "v3", "v4", "v5", "v6" )
rownames( A ) <- A_name
colnames( A ) <- A_name

# 長さ2の歩道の個数を求める
print("(1)長さ2の歩道の個数")
print( A2 <- A %*% A )
A2RM <- diag(6) + A + A2 # 単位行列 + B + B^2を求める
A2RM[ A2RM>=1 ] <- 1 # 1以上の要素を1に置換
print("(2)長さ2以下の歩道の可到達性")
print(A2RM) # 長さ2以下の歩道による可到達性の行列の表示

g2<- graph_from_adjacency_matrix( A, mode="undirected" ) # 隣接行列の作成
# グラフの描画（手動でグラフを修正可能）
tkplot( g2, edge.color="black", vertex.color="white", vertex.label.color="black" )

print("(4)任意の頂点間の可到達性")
( DM2 <- distances( g2 ) )
print( RM2 <- ifelse( is.infinite(DM2), 0, 1 ) )