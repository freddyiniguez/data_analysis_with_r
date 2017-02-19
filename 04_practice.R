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


# BINOMIAL (D)
shade.bin(x=5,n=20,tail="X=x",show.d=TRUE)
shade.bin(x=5,n=20,tail="lower")
shade.bin(x=5,n=20,tail="two")
shade.bin(from=8,to=12,n=20,tail="middle")

# CAUCHY (C)


# CHI-CUADRADA (C)
shade.chi(x=2,nu=5,tail="lower")
shade.chi(x=2,nu=5,tail="upper")
shade.chi(nu=7,tail="two",prob.to.each.tail=0.025)
shade.chi(from=.5,to=.7,nu=5,tail="middle")

# EXPONENCIAL (C)


# F (C)
shade.F(x=2,nu1=15,nu2=8,tail="lower")
shade.F(x=2,nu1=15,nu2=8,tail="upper")
shade.F(nu1=15,nu2=8,tail="two",prob.to.each.tail=0.025)
shade.F(from=.5,to=.7,nu1=15,nu2=10,tail="middle")

# GAMMA (C)


# GEOMETRICA (D)


# HIPERGEOMETRICA (D)
# Grafico de barras, color verde


# LOGISTICA (C)


# LOGNORMAL (C)


# BINOMIAL NEGATIVA (D)


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


# WEIBULL (C)


# POISSON (D)
shade.poi(x=5,lambda=6,tail="X=x",show.d=TRUE)
shade.poi(x=5,lambda=7,tail="lower")
shade.poi(x=5,lambda=8,tail="upper")
shade.poi(from=8,to=12,lambda=7,tail="middle")

# Para todas las opciones graficas (como botones para guardar, imprimir, simular, cajas
# de seleccion, etc) es posible utilizar el framework Shiny, el cual permite conectar
# aplicaciones HTML con R.
# El siguiente es un ejemplo de implementacion con Shiny.
options(browser="/usr/bin/open -a 'Google Chrome'")
browseURL("https://freddyiniguez.shinyapps.io/03_practice/")
