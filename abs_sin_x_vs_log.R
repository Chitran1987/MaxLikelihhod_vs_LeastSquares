rm(list=ls())
library('StatsChitran') #Can be downloaded from github
x <- seq(-4*pi, 4*pi, by=0.01) #build the x-values
y <- abs(sin(x))
y1 <- log(y) #build the ln(y) function
y <- nrm(y) #normalize the y axis (nrm available with StatsChitran)
y1 <- nrm(y1) #normalize the ln(y) function
plot(x,y, type = 'l', col='blue') #plot function
lines(x, y1, col='red') #plot ln(y) function