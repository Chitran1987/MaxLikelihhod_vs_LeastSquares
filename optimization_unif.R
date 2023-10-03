rm(list=ls())
library(StatsChitran) # package available on github
df <- read.table('D:/SynologyDrive/Didos_self/Career/Future/blog_medium/MaxLikelihhod_vs_LeastSquares/data/data_mk_unif_nr_0.15.txt', sep = '\t', header = T)
plot(df$X, df$Y, type = 'b', col=rgb(0,0,1,0.1), pch=19)

##least squares estimation###########################################################
fn <- function(v){
  y <- v[1]*df$X^2 + v[2]*df$X + v[3] #objective function has co-efficient a, b and c, embedded in vector v
  e <- df$Y - y #the error term
  TSE <- sum(e^2) #the sum of squared errors
  return(TSE)
}#The objective function for the optimization
L <- optim(c(1, 2, 3), fn) #the optimization step
val_LSE <- L$par

##log-likelihood estimation#########################################################
#unidistr function
unidistr <- function(X, a, b){
  if(a >= b){
    stop('a should be less than b')
  }else{
    Y <- rep(NA, length(X))
    df <- data.frame(X,Y)
    names(df) <- c('X', 'Y')
    df$Y[df$X < a] <- 0
    df$Y[df$X > b] <- 0
    df$Y[is.na(df$Y) == T] <- 1/(b - a)
  }
  return(df)
}
#objective function
f <- function(v){
  y <- v[1]*df$X^2 + v[2]*df$X + v[3] #objective function has co-efficient a, b and c, embedded in vector v. 
  e <- df$Y - y #the error term
  #The function "gauss" used in the next line is available with the StatsChitran package on github
  G <- unidistr(df$X, v[4], v[5]) #likelihood vector that each corresponding error term belongs to a gaussian with zero mean and a fixed standard deviation
  LLE <- sum(log(G$Y)) #log likelihood term 
  return(LLE)
}#The objective function for the optimization
##Defining the optimization step
#The constraint matrix
m <- matrix(c(0, 0, 0, -1, 1), nrow = 1, byrow = T)
b <- rep(0, 5)
LLE <- constrOptim(c(1, 2, 3, 4, 10), f, control = list(fnscale = -1), ui = m, ci = b, grad = NULL ) #the optimization step
val_LLE <- LK$par


