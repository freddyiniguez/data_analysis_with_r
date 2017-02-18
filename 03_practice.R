# Práctica 03
# Equipo:
#     - Chaires, Karina
#     - Íñiguez, Freddy

# ------------- VARIABLES ------------- #
n1 = 5
n2 = 10
n3 = 20
n4 = 30
n5 = 50
n6 = 100
n7 = 200
n8 = 500
n9 = 1000

par(mfrow = c(3,3))

media = 47.3
desviacion_estandar = 9.3

# ------------- DISTRIBUCIONES ------------- #
# BETA (C)
# Histograma, color azul
quantiles <- quantile(x <- rnorm(100))
pbeta(quantiles)

# BINOMIAL (D)
# Gráfico de barras, color verde

# CAUCHY (C)
# Histograma, color azul

# CHI-CUADRADA (C)
# Histograma, color azul

# EXPONENCIAL (C)
# Histograma, color azul

# F (C)
# Histograma, color azul

# GAMMA (C)
# Histograma, color azul

# GEOMÉTRICA (D)
# Gráfico de barras, color verde

# HIPERGEOMÉTRICA (D)
# Gráfico de barras, color verde

# LOGÍSTICA (C)
# Histograma, color azul

# LOGNORMAL (C)
# Histograma, color azul

# BINOMIAL NEGATIVA (D)
# Gráfico de barras, color verde

# NORMAL (C)
# Histograma, color azul
normal_dist <- rnorm(n1, mean = media, sd = desviacion_estandar)
hist(normal_dist, main = "Distribución normal con n = 5", col = "blue")
normal_dist <- rnorm(n2, mean = media, sd = desviacion_estandar)
hist(normal_dist, main = "Distribución normal con n = 10", col = "blue")
normal_dist <- rnorm(n3, mean = media, sd = desviacion_estandar)
hist(normal_dist, main = "Distribución normal con n = 20", col = "blue")
normal_dist <- rnorm(n4, mean = media, sd = desviacion_estandar)
hist(normal_dist, main = "Distribución normal con n = 30", col = "blue")
normal_dist <- rnorm(n5, mean = media, sd = desviacion_estandar)
hist(normal_dist, main = "Distribución normal con n = 50", col = "blue")
normal_dist <- rnorm(n6, mean = media, sd = desviacion_estandar)
hist(normal_dist, main = "Distribución normal con n = 100", col = "blue")
normal_dist <- rnorm(n7, mean = media, sd = desviacion_estandar)
hist(normal_dist, main = "Distribución normal con n = 200", col = "blue")
normal_dist <- rnorm(n8, mean = media, sd = desviacion_estandar)
hist(normal_dist, main = "Distribución normal con n = 500", col = "blue")
normal_dist <- rnorm(n9, mean = media, sd = desviacion_estandar)
hist(normal_dist, main = "Distribución normal con n = 1000", col = "blue")

# t-STUDENT (C)
# Histograma, color azul

# UNIFORME (C)
# Histograma, color azul

# WEIBULL (C)
# Histograma, color azul

# POISSON (D)
# Gráfico de barras, color verde