rm(list=ls())
library('StatsChitran') #Can be downloaded from github
x <- seq(-10, 10, by=0.01) #build the x-values
y <- gauss(x, amp = 1, sig = 1, mu = -1) + gauss(x, amp = 1.5, sig = 0.5, mu = 4) #build the y values(functions "gauss" available in StatsChitran) 
y1 <- log(y) #build the ln(y) function
y <- nrm(y) #normalize the y axis (nrm() available with StatsChitran)
y1 <- nrm(y1) #normalize the ln(y) function
subplot(c(2,1))#create a 2 row, 1 column subplot(subplot() available with StatsChitran)
plot(x,y, type = 'l', col='blue') #plot function
lines(x, y1, col='red') #plot ln(y) function

x <- seq(-4*pi, 4*pi, by=0.01) #build the x-values
y <- abs(sin(x))
y1 <- log(y) #build the ln(y) function
y <- nrm(y) #normalize the y axis (nrm available with StatsChitran)
y1 <- nrm(y1) #normalize the ln(y) function
plot(x,y, type = 'l', col='blue') #plot function
lines(x, y1, col='red') #plot ln(y) function
subplot(c(1,1))