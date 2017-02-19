probabilidad.beta <- function(a,b,opt) {
       x <- seq(0, 1, length = 1000)
       if(opt=="1")
         fx <- dbeta(x, a,b)
       if(opt=="2")
         fx <- pbeta(x, a,b)
       if(opt=="3")
         fx <- qbeta(x, a,b)
       f <- fx; f[fx == Inf] <- 1e100
       matplot(x, f, ylab="", type="l",
              main = sprintf("%s (x, a=%g, b=%g)","beta",a,b))
       invisible(cbind(x, fx))
}

probabilidad.binomial <- function(b_size, b_prob, opt) {
  x <- seq(0,b_size)
  plot(x, dbinom(x, size=b_size, prob=b_prob), type="h")
}
