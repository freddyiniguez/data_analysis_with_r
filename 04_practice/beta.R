probabilidad.beta <- function(a,b,opt) {
       x <- seq(0, 1, length = 1000)
       if(opt=="dbeta")
         fx <- dbeta(x, a,b)
       if(opt=="pbeta")
         fx <- pbeta(x, a,b)
       if(opt=="qbeta")
         fx <- qbeta(x, a,b)
       f <- fx; f[fx == Inf] <- 1e100
       matplot(x, f, ylab="", type="l",
              main = sprintf("%s (x, a=%g, b=%g)","beta",a,b))
       invisible(cbind(x, fx))
}
