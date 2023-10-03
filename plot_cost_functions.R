rm(list=ls())
library(StatsChitran)
ClearPlot()
df <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_norm_sd_81.txt', sep = '\t', header = T)
plot(df$X, df$Y, type = 'b', col=rgb(0,0,1,0.1), pch=19)


f <- function(v){
  y <- v[1]*df$X^2 + v[2]*df$X + v[3] #objective function has co-efficient a, b and c, embedded in vector v. 
  e <- df$Y - y #the error term
  #The function "gauss" used in the next line is available with the StatsChitran package on github
  G <- gauss(e, sig =  v[4], mu = 0, probability = T) #likelihood vector that each corresponding error term belongs to a gaussian with zero mean and a fixed standard deviation
  log_LE <- sum(log(G)) #log likelihood term 
  return(log_LE)
}#The objective function for the optimization

ClearPlot()
X <- seq(-10, 10, by=0.1)
Y <- NULL
for (k in X) {
  Y <- c(f(c(k, c(4, 7, 81))), Y)
}
plot(X,Y, type = 'l', pch=19, col=rgb(0,0,1,1), xlab = 'v[1] (coefficient a)')
