rm(list=ls())
library('StatsChitran')
ClearPlot()
X <- seq(-10, 10, by=0.01)
Y <- gauss(X, amp=5, probability = F)
plot(X,Y, type = 'l')

##optimize for the gaussian using OLS
f_OLS <- function(v){
  Y_hat <- gauss(X, amp = v[1], mu = v[2], sig = v[3], probability = F)
  e <- Y - Y_hat
  TSE <- sum(e^2)
  return(TSE)
}
#optimize
L <- optim(c(1,2,3), f_OLS)
val <- L$par

##optimize for the gaussian using likelihood
#write a function for calculating the Maximum Likelihood estimate for the dataset
f_log_LE <- function(v){
  Y_hat <- gauss(X, amp = v[1], mu = v[2], sig = v[3], probability = F)
  e <- Y - Y_hat
  G <- gauss(e, sig =  v[4], mu = 0, probability = T) #likelihood vector that each corresponding error term belongs to a gaussian with zero mean and a fixed standard deviation
  #LE = prod(G) #Likelihood estimate
  log_LE <- sum(log(G))
  return(log_LE)
}
L_log_LE <- optim(c(1, 2, 3, 4), f_log_LE, control = list(fnscale = -1))
val_L_log_LE <- L_log_LE$par