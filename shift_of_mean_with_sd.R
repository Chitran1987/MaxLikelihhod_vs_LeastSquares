rm(list=ls())
library(StatsChitran)
ClearPlot()
mean_list <- NULL

df <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_norm_sd_3.txt', sep = '\t', header = T)
subplot(c(2,2))
e3 <- df$Y - (3*df$X^2 + 4*df$X + 7)
hist(e3)
mean_list <- c(mean_list, mean(e3))

df <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_norm_sd_9.txt', sep = '\t', header = T)
e9 <- df$Y - (3*df$X^2 + 4*df$X + 7)
hist(e9)
mean_list <- c(mean_list, mean(e9))

df <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_norm_sd_27.txt', sep = '\t', header = T)
e27 <- df$Y - (3*df$X^2 + 4*df$X + 7)
hist(e27)
mean_list <- c(mean_list, mean(e27))

df <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_norm_sd_81.txt', sep = '\t', header = T)
e81 <- df$Y - (3*df$X^2 + 4*df$X + 7)
hist(e81)
mean_list <- c(mean_list, mean(e81))

subplot(c(1,1))
plot(c(3,9,27,81), abs(mean_list), type = 'b', col=rgb(0,0,1), pch=19, xlab = 'sd', ylab = 'absolute mean of residuals')
