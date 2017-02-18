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

# t-STUDENT (C)
# Histograma, color azul

# UNIFORME (C)
# Histograma, color azul

# WEIBULL (C)
# Histograma, color azul

# POISSON (D)
# Gráfico de barras, color verde