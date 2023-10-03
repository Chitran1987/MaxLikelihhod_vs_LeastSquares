rm(list=ls())
library('StatsChitran')
##read the data
df_sd_3 <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_norm_sd_3.txt', sep='\t', header = T)
df_sd_9 <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_norm_sd_9.txt', sep='\t', header = T)
df_sd_27 <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_norm_sd_27.txt', sep='\t', header = T)
df_sd_81 <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_norm_sd_81.txt', sep='\t', header = T)
##plot the data
subplot(c(2,2))
plot(df_sd_3$X, df_sd_3$Y, col=rgb(0,0,1,0.1), type = 'b', pch=19)
plot(df_sd_9$X, df_sd_9$Y, col=rgb(0,0,1,0.1), type = 'b', pch=19)
plot(df_sd_27$X, df_sd_27$Y, col=rgb(0,0,1,0.1), type = 'b', pch=19)
plot(df_sd_81$X, df_sd_81$Y, col=rgb(0,0,1,0.1), type = 'b', pch=19)
subplot(c(1,1))
