rm(list=ls())
####write a program for a dataset with squared values and noise sampled from a uniform distribution for testing with optimization

#write a program to build a dataset with added noise of a = 0.01
library('StatsChitran') #package available on github

#write a function to generate data which adds noise sampled from a uniform distribution with a certain noise_rat cutoff
gen_dat <- function(noise_rat){
  #noise_rat <- 0.01 #define 
  X <- seq(-10, 10, by=0.01)
  Y <- 3*X^2 +4*X + 7 #underlying structure
  Y <- Y + runif(length(X), min = -noise_rat*(max(Y) - min(Y)), max = noise_rat*(max(Y) - min(Y)))
  return(data.frame(X,Y))
}

ClearPlot() #function available with StatsChitran
subplot(c(2,2))

df <- gen_dat(0.01)
write.table(df, file = 'D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_unif_nr_0.01.txt', sep='\t', col.names = T, row.names = F)
plot(df$X,df$Y, type = 'b', col=rgb(0,0,1,0.1), pch=19)

df <- gen_dat(0.05)
write.table(df, file = 'D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_unif_nr_0.05.txt', sep='\t', col.names = T, row.names = F)
plot(df$X,df$Y, type = 'b', col=rgb(0,0,1,0.1), pch=19)

df <- gen_dat(0.1)
write.table(df, file = 'D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_unif_nr_0.1.txt', sep='\t', col.names = T, row.names = F)
plot(df$X,df$Y, type = 'b', col=rgb(0,0,1,0.1), pch=19)

df <- gen_dat(0.15)
write.table(df, file = 'D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_unif_nr_0.15.txt', sep='\t', col.names = T, row.names = F)
plot(df$X,df$Y, type = 'b', col=rgb(0,0,1,0.1), pch=19)

subplot(c(1,1))
