rm(list=ls())
library(StatsChitran) # package available on github
df <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_norm_sd_3.txt', sep = '\t', header = T)
plot(df$X, df$Y, type = 'b', col=rgb(0,0,1,0.1), pch=19)

#least squares estimation
fn <- function(v){
  y <- v[1]*df$X^2 + v[2]*df$X + v[3] #objective function has co-efficient a, b and c, embedded in vector v
  e <- df$Y - y #the error term
  TSE <- sum(e^2) #the sum of squared errors
  return(TSE)
}#The objective function for the optimization
L <- optim(c(1, 2, 3), fn) #the optimization step
val_LSE <- L$par

#log-likelihood estimation
f <- function(v){
  y <- v[1]*df$X^2 + v[2]*df$X + v[3] #objective function has co-efficient a, b and c, embedded in vector v. 
  e <- df$Y - y #the error term
  #The function "gauss" used in the next line is available with the StatsChitran package on github
  G <- gauss(e, sig =  v[4], mu = 0, probability = T) #likelihood vector that each corresponding error term belongs to a gaussian with zero mean and a fixed standard deviation
  log_LE <- sum(log(G)) #log likelihood term 
  return(log_LE)
}#The objective function for the optimization
L_LLE <- optim(c(1, 2, 3, 10), f, control = list(fnscale = -1)) #the optimization step
val_LLE <- L_LLE$par


