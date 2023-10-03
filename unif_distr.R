rm(list=ls())
library(StatsChitran)

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

unidistr(c(1,2,3), 1.3, 2.5)
X <- seq(-3, 3, by = 0.01)
df <- unidistr(X, -1, 2)
ClearPlot()
plot(df$X, df$Y, type = 'l')
