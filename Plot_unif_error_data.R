rm(list=ls())
library('StatsChitran')

##read the data
df_u_0.01 <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_unif_nr_0.01.txt', sep='\t', header = T)
df_u_0.05 <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_unif_nr_0.05.txt', sep='\t', header = T)
df_u_0.10 <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_unif_nr_0.1.txt', sep='\t', header = T)
df_u_0.15 <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_unif_nr_0.15.txt', sep='\t', header = T)
##plot the data
subplot(c(2,2))
plot(df_u_0.01$X, df_u_0.01$Y, col=rgb(0,0,1,0.1), type = 'b', pch=19)
plot(df_u_0.05$X, df_u_0.05$Y, col=rgb(0,0,1,0.1), type = 'b', pch=19)
plot(df_u_0.10$X, df_u_0.10$Y, col=rgb(0,0,1,0.1), type = 'b', pch=19)
plot(df_u_0.15$X, df_u_0.15$Y, col=rgb(0,0,1,0.1), type = 'b', pch=19)
subplot(c(1,1))