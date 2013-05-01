## Hazard-rate of differents distributions:

  ## Exponential distribution

  ## Weibull dstribution
# h(t)
h_Weibull <- function(lambda, gamma, t){
  return( lambda*gamma*((lambda*t)^(gamma-1)) )
}

x <- seq(0,10,0.01)
h_weib1 <- h_Weibull(5,0.5,x)
h_weib2 <- h_Weibull(5,1,x)  # exponential
h_weib3 <- h_Weibull(5,3,x)
plot(x, h_weib1,col=2, type='l', main='Hazard-rate Weibull distribution', xlab='t', 
     ylab='h(t)', xlim=c(0,1.4), ylim=c(0,20))
lines(x,h_weib2,col=3)
lines(x,h_weib3,col=4) 
text(0.315,19,expression(paste(lambda,' = 5; ',gamma,' = 0.5' )),col=2,cex=0.8)
text(0.3,17.5,expression(paste(lambda,' = 5; ',gamma,' = 1' )),col=3,cex=0.8)
text(0.3,16,expression(paste(lambda,' = 5; ',gamma,' = 3' )),col=4,cex=0.8)