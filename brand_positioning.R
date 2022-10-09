
dim(A1_2_Brand_ratings)
summary(A1_2_Brand_ratings)
head(A1_2_Brand_ratings)
tail(A1_2_Brand_ratings)
row.names(A1_2_Brand_ratings)
colnames(A1_2_Brand_ratings)
str(A1_2_Brand_ratings)


A1_2_Brand_ratings.sc=A1_2_Brand_ratings
A1_2_Brand_ratings.sc[, 1:9]=scale(A1_2_Brand_ratings[, 1:9])
summary(A1_2_Brand_ratings.sc)
library(corrplot)
corrplot(cor(A1_2_Brand_ratings.sc[,1:9]),order="hclust")


A1_2_Brand_ratings.mean=aggregate(. ~ brand, data=A1_2_Brand_ratings.sc, mean)
A1_2_Brand_ratings.mean

rownames(A1_2_Brand_ratings.mean) = A1_2_Brand_ratings.mean[,1]
A1_2_Brand_ratings.mean = A1_2_Brand_ratings.mean[, -1]

A1_2_Brand_ratings.pc=prcomp(A1_2_Brand_ratings.sc[, 1:9])
summary(A1_2_Brand_ratings.pc)

plot(A1_2_Brand_ratings.pc, type="1")

plot(A1_2_Brand_ratings.pc)
biplot(A1_2_Brand_ratings.pc)

A1_2_Brand_ratings.mean

A1_2_Brand_ratings.mu.pc=prcomp(A1_2_Brand_ratings.mean, scale=TRUE)
summary(A1_2_Brand_ratings.mu.pc)

biplot(A1_2_Brand_ratings.mu.pc, main="Brand Positioning", cex=c(1.5,1))