rm(list=ls())
####write a program for a dataset with squared values for testing with optimization

#write a program to build a dataset with added gaussian noise of var = 9
library('StatsChitran')
X <- seq(-10, 10, by=0.01)
Y <- 3*X^2 +4*X + 7 + rnorm(n = length(X), mean = 0, sd = 3)
ClearPlot()
plot(X,Y, type = 'b', col=rgb(0,0,1,0.1), pch=19)
df <- data.frame(X,Y)
names(df) <- c('X', 'Y')
write.table(df, file = 'D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_norm_sd_3.txt', sep='\t', col.names = T, row.names = F)

#write a program to build a dataset with added gaussian noise of var = 81
X <- seq(-10, 10, by=0.01)
Y <- 3*X^2 +4*X + 7 + rnorm(n = length(X), mean = 0, sd = 9)
ClearPlot()
plot(X,Y, type = 'b', col=rgb(0,0,1,0.1), pch=19)
df <- data.frame(X,Y)
names(df) <- c('X', 'Y')
write.table(df, file = 'D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_norm_sd_9.txt', sep='\t', col.names = T, row.names = F)

#write a program to build a dataset with added gaussian noise of var = 729
X <- seq(-10, 10, by=0.01)
Y <- 3*X^2 +4*X + 7 + rnorm(n = length(X), mean = 0, sd = 27)
ClearPlot()
plot(X,Y, type = 'b', col=rgb(0,0,1,0.1), pch=19)
df <- data.frame(X,Y)
names(df) <- c('X', 'Y')
write.table(df, file = 'D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_norm_sd_27.txt', sep='\t', col.names = T, row.names = F)

#write a program to build a dataset with added gaussian noise of var = 6561
X <- seq(-10, 10, by=0.01)
Y <- 3*X^2 +4*X + 7 + rnorm(n = length(X), mean = 0, sd = 81)
ClearPlot()
plot(X,Y, type = 'b', col=rgb(0,0,1,0.1), pch=19)
df <- data.frame(X,Y)
names(df) <- c('X', 'Y')
write.table(df, file = 'D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_norm_sd_81.txt', sep='\t', col.names = T, row.names = F)
