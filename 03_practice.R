# Practica 03
# Equipo:
#     - Chaires, Karina
#     - Iniguez, Freddy


# ------------- VARIABLES ------------- #
par(mfrow = c(3,3))

media = 47.3
desviacion_estandar = 9.3


# ------------- DISTRIBUCIONES ------------- #
# BETA (C)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  beta_dist <- rbeta(n, shape1=7, shape2=2)
  beta_dist_title <- paste("Distribucion Beta con n =", n, sep=" ", collapse=" ")
  hist(beta_dist, probability=TRUE, main=beta_dist_title, col="blue")
  lines(density(beta_dist, adjust=2), col="black", lwd=3)
}

# BINOMIAL (D)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  binomial_dist <- rbinom(n, size=100, prob=0.25)
  binomial_dist_title <- paste("Distribucion Binomial con n =", n, sep=" ", collapse=" ")
  barplot(binomial_dist, main=binomial_dist_title, col="green")
}

# CAUCHY (C)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  cauchy_dist <- rcauchy(n, location=2, scale=5)
  cauchy_dist_title <- paste("Distribucion Cauchy con n =", n, sep=" ", collapse=" ")
  hist(cauchy_dist, probability=TRUE, main=cauchy_dist_title, col="blue")
  lines(density(cauchy_dist, adjust=2), col="black", lwd=3)
}

# CHI-CUADRADA (C)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  chicuadrada_dist <- rchisq(n, df=7)
  chicuadrada_dist_title <- paste("Distribucion Chi-cuadrada con n =", n, sep=" ", collapse=" ")
  hist(chicuadrada_dist, probability=TRUE, main=chicuadrada_dist_title, col="blue")
  lines(density(chicuadrada_dist, adjust=2), col="black", lwd=3)
}

# EXPONENCIAL (C)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  exponencial_dist <- rexp(n, rate=1)
  exponencial_dist_title <- paste("Distribucion Exponencial con n =", n, sep=" ", collapse=" ")
  hist(exponencial_dist, probability=TRUE, main=exponencial_dist_title, col="blue")
  lines(density(exponencial_dist, adjust=2), col="black", lwd=3)
}

# F (C)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  f_dist <- rf(n, df1=5, df2=2)
  f_dist_title <- paste("Distribucion F con n =", n, sep=" ", collapse=" ")
  hist(f_dist, probability=TRUE, main=f_dist_title, col="blue")
  lines(density(f_dist, adjust=2), col="black", lwd=3)
}

# GAMMA (C)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  gamma_dist <- rgamma(n, shape=3, rate=7)
  gamma_dist_title <- paste("Distribucion Gamma con n =", n, sep=" ", collapse=" ")
  hist(gamma_dist, probability=TRUE, main=gamma_dist_title, col="blue")
  lines(density(gamma_dist, adjust=2), col="black", lwd=3)
}

# GEOMETRICA (D)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  geometrica_dist <- rgeom(n, prob=0.25)
  geometrica_dist_title <- paste("Distribucion Geometrica con n =", n, sep=" ", collapse=" ")
  barplot(geometrica_dist, main=geometrica_dist_title, col="green")
}

# HIPERGEOMETRICA (D)
# Grafico de barras, color verde
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  hypergeometrica_dist <- rhyper(nn=n, m=10, n=5, k=3)
  hypergeometrica_dist_title <- paste("Distribucion Hipergeometrica con n =", n, sep=" ", collapse=" ")
  barplot(hypergeometrica_dist, main=hypergeometrica_dist_title, col="green")
}

# LOGISTICA (C)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  logistica_dist <- rlogis(n, location=2, scale=5)
  logistica_dist_title <- paste("Distribucion Logistica con n =", n, sep=" ", collapse=" ")
  hist(logistica_dist, probability=TRUE, main=logistica_dist_title, col="blue")
  lines(density(logistica_dist, adjust=2), col="black", lwd=3)
}

# LOGNORMAL (C)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  lognormal_dist <- rlnorm(n, meanlog=0, sdlog=1)
  lognormal_dist_title <- paste("Distribucion Lognormal con n =", n, sep=" ", collapse=" ")
  hist(lognormal_dist, probability=TRUE, main=lognormal_dist_title, col="blue")
  lines(density(lognormal_dist, adjust=2), col="black", lwd=3)
}

# BINOMIAL NEGATIVA (D)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  binomialneg_dist <- rnbinom(n, size=100, prob=0.25)
  binomialneg_dist_title <- paste("Distribucion Binomial Negativa con n =", n, sep=" ", collapse=" ")
  barplot(binomialneg_dist, main=binomialneg_dist_title, col="green")
}

# NORMAL (C)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  normal_dist <- rnorm(n, mean=media, sd=desviacion_estandar)
  normal_dist_title <- paste("Distribucion normal con n =", n, sep=" ", collapse=" ")
  hist(normal_dist, probability=TRUE, main=normal_dist_title, col="blue")
  lines(density(normal_dist, adjust=2), col="black", lwd=3)
}

# t-STUDENT (C)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  tstudent_dist <- rt(n, df=7)
  tstudent_dist_title <- paste("Distribucion t-Student con n =", n, sep=" ", collapse=" ")
  hist(tstudent_dist, probability=TRUE, main=tstudent_dist_title, col="blue")
  lines(density(tstudent_dist, adjust=2), col="black", lwd=3)
}

# UNIFORME (C)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  uniform_dist <- runif(n, min=0, max=10)
  uniform_dist_title <- paste("Distribucion uniforme con n =", n, sep=" ", collapse=" ")
  hist(uniform_dist, probability=TRUE, main=uniform_dist_title, col="blue")
  lines(density(uniform_dist, adjust=2), col="black", lwd=3)
}

# WEIBULL (C)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  weibull_dist <- rweibull(n, shape=9, scale=2)
  weibull_dist_title <- paste("Distribucion Weibull con n =", n, sep=" ", collapse=" ")
  hist(weibull_dist, probability=TRUE, main=weibull_dist_title, col="blue")
  lines(density(weibull_dist, adjust=2), col="black", lwd=3)
}

# POISSON (D)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  poisson_dist <- rpois(n, lambda=12)
  poisson_dist_title <- paste("Distribucion Poisson con n =", n, sep=" ", collapse=" ")
  barplot(poisson_dist, main=poisson_dist_title, col="green")
}