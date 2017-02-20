# Practica 04
# Equipo:
#     - Chaires, Karina
#     - Iniguez, Freddy


# ------------- VARIABLES ------------- #
par(mfrow = c(2,2))

# Es necesario cargar la funcion shadenorm de Radziwill para sombrear
source("sourceHttps.R")
source_https("https://raw.githubusercontent.com/NicoleRadziwill/R-Functions/master/shadenorm.R")

#Se necesita las funciones de shade de 	Ken Aho
#Url de referencia https://cran.r-project.org/web/packages/asbio/index.html
source("shade.r")

# ------------- DISTRIBUCIONES ------------- #
# BETA (C)
x <- seq(0, 1, length = 1000)
a=2
b=4

  fx <- dbeta(x, a,b)
  f <- fx; f[fx == Inf] <- 1e100
  matplot(x, f, ylab="", type="l",
        main = sprintf("%s (x, a=%g, b=%g)","beta",a,b))
  invisible(cbind(x, fx))
  
  fxp <- pbeta(x, a,b)
  f <- fxp; f[fxp == Inf] <- 1e100
  matplot(x, f, ylab="", type="l",
          main = sprintf("%s (x, a=%g, b=%g)","beta",a,b))
  invisible(cbind(x, fxp))

  fxq <- qbeta(x, a,b)
  f <- fxq; f[fxq == Inf] <- 1e100
  matplot(x, f, ylab="", type="l",
          main = sprintf("%s (x, a=%g, b=%g)","beta",a,b))
  invisible(cbind(x, fxq))
  
# BINOMIAL (D)
shade.bin(x=5,n=20,tail="X=x",show.d=TRUE)
shade.bin(x=5,n=20,tail="lower")
shade.bin(x=5,n=20,tail="two")
shade.bin(from=8,to=12,n=20,tail="middle")

# CAUCHY (C)
x <- seq(-636.619, 636.619, length.out=1000)
plot(x, pcauchy(x, location=0, scale=1), 
     xlab="x",
     ylab="f(x)", 
     main=paste("Cauchy Distribution:  Location=0, Scale=1", 
     type="l"))

# CHI-CUADRADA (C)
shade.chi(x=2,nu=5,tail="lower")
shade.chi(x=2,nu=5,tail="upper")
shade.chi(nu=7,tail="two",prob.to.each.tail=0.025)
shade.chi(from=.5,to=.7,nu=5,tail="middle")

# EXPONENCIAL (C)
x <- seq(0.001, 7.601, length.out=1000)
plot(x, pexp(x, rate=1), 
     type="l", 
     xlab="x",
     ylab="f(x)", 
     main=paste("Exponential Distribution:  Rate=1"))

# F (C)
shade.F(x=2,nu1=15,nu2=8,tail="lower")
shade.F(x=2,nu1=15,nu2=8,tail="upper")
shade.F(nu1=15,nu2=8,tail="two",prob.to.each.tail=0.025)
shade.F(from=.5,to=.7,nu1=15,nu2=10,tail="middle")

# GAMMA (C)
x <- seq(0.224, 69.991, length.out=1000)
plot(x, pgamma(x, shape=2, scale=7), 
     type="h", xlab="x", 
     ylab="f(x)",
     main=paste("Gamma cdf:Shape=2, Scale=7"))

x <- seq(0.224, 69.991, length.out=1000)
plot(x, dgamma(x, shape=2, scale=7), 
     type="h", xlab="x", 
     ylab="f(x)",
     main=paste("Gamma:Shape=2, Scale=7"))


# GEOMETRICA (D)
x <- 0:10
plot(x, dgeom(x, prob=0.5),
     xlab="x", 
     ylab="f(x)",
     main="Geometric Distribution:  Probability of success=0.5", 
     type="h")

# HIPERGEOMETRICA (D)
# Grafico de barras, color verde
x <- 0:5
plot(x, dhyper(x, m=10, n=10, k=5),
     xlab="x", 
     ylab="f(x)",
     main="Hypergeometric Distribution:  m=10, n=10, k=5", 
     type="h")

# LOGISTICA (C)
#derecha
x <- seq(-7.6, 7.6, length.out=1000)
plot(x, plogis(x, location=0, scale=1), 
     xlab="x", 
     ylab="f(x)", 
     main=("Logistic Distribution:  Location=0, Scale=1"),
     type="l")

# LOGNORMAL (C)
#derecha
x <- seq(1.127, 21.774, length.out=1000)
plot(x, plnorm(x, meanlog=1.6, sdlog=0.45), 
     xlab="x",
     ylab="f(x)",
     main=paste("Lognormal Distribution:  Mean (log scale)=1.6, Standard deviation (log scale)=0.45"),
     type="h" )

# BINOMIAL NEGATIVA (D)
x <- 0:10
plot(x, dnbinom(x, size=1, prob=0.5),
     xlab="x", 
     ylab="f(x)",
     main="NegativeBinomial Distribution:  Trials=1, Prob=0.5", 
     type="h")

# NORMAL (C)
# Ejemplos de implementacion con shadenorm
shadenorm(between=c(73, 80), mu=78, sig=8)
shadenorm(between=c(-Inf,78),mu=78,sig=8)
shadenorm(between=c(82,Inf),mu=78,sig=8)

# t-STUDENT (C)
shade.t(x=-1,nu=5,tail="lower")
shade.t(x=-1,nu=5,tail="upper")
shade.t(x=-1,nu=5,tail="two")
shade.t(from=.5,to=.7,nu=5,tail="middle")

# UNIFORME (C)
x <- seq(0, 1, length.out=1000)
plot(x, punif(x, min=0, max=1), 
     xlab="x",
     ylab="f(x)",
     main=paste("Uniform Distribution:  Minimum=0, Maximum=1", 
     type="h"))

# WEIBULL (C)
x <- seq(5.154, 6.248, length.out=1000)
plot(x, pweibull(x, shape=50, scale=6), 
     type="l", 
     xlab="x",
     ylab="f(x)",
     main=paste("Weibull Distribution:  Shape=50, Scale=6"))

# POISSON (D)
shade.poi(x=5,lambda=6,tail="X=x",show.d=TRUE)
shade.poi(x=5,lambda=7,tail="lower")
shade.poi(x=5,lambda=8,tail="upper")
shade.poi(from=8,to=12,lambda=7,tail="middle")



