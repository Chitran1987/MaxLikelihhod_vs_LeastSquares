rm(list=ls())
df <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_norm_sd_81.txt', sep = '\t', header = T)
plot(df$X, df$Y, type = 'b', col=rgb(0,0,1,0.1), pch=19)

#OLS estimation
fn <- function(v){
  y <- v[1]*df$X^2 + v[2]*df$X + v[3]
  e <- df$Y - y
  TSE <- sum(e^2)
  return(TSE)
}
L <- optim(c(1, 2, 3), fn)
val_OLS <- L$par

#MLE estimation
f <- function(v){
  y <- v[1]*df$X^2 + v[2]*df$X + v[3]
  e <- df$Y - y
  G <- gauss(e, sig =  v[4], mu = 0, probability = T) #likelihood vector that each corresponding error term belongs to a gaussian with zero mean and a fixed standard deviation
  #LE = prod(G) #Likelihood estimate
  log_LE <- sum(log(G))
  return(log_LE)
}
L_MLE <- optim(c(1, 2, 3, 10), f, control = list(fnscale = -1))
val_MLE <- L_MLE$par


