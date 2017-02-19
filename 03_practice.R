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
# Histograma, color azul
quantiles <- quantile(x <- rnorm(100))
pbeta(quantiles)

# BINOMIAL (D)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  binomial_dist <- rbinom(n, size = 100, prob = 0.25)
  binomial_dist_title <- paste("Distribucion Binomial con n =", n, sep=" ", collapse=" ")
  barplot(binomial_dist, main=binomial_dist_title, col="green")
}

# CAUCHY (C)
# Histograma, color azul

# CHI-CUADRADA (C)
for(n in c(5, 10, 20, 30, 50, 100, 200, 500, 1000)){
  chicuadrada_dist <- rchisq(n, df=7)
  chicuadrada_dist_title <- paste("Distribucion Chi-cuadrada con n =", n, sep=" ", collapse=" ")
  hist(chicuadrada_dist, probability=TRUE, main=chicuadrada_dist_title, col="blue")
  lines(density(chicuadrada_dist, adjust=2), col="black", lwd=3)
}

# EXPONENCIAL (C)
# Histograma, color azul

# F (C)
# Histograma, color azul

# GAMMA (C)
# Histograma, color azul

# GEOM??TRICA (D)
# Gr??fico de barras, color verde

# HIPERGEOM??TRICA (D)
# Gr??fico de barras, color verde

# LOG??STICA (C)
# Histograma, color azul

# LOGNORMAL (C)
# Histograma, color azul

# BINOMIAL NEGATIVA (D)
# Grafico de barras, color verde

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
# Histograma, color azul

# POISSON (D)
# Gr??fico de barras, color verde