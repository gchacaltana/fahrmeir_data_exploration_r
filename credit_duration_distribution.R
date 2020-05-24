# Instalación de paquetes
# install.packages("Fahrmeir")
# install.packages("ggplot2")

# Cargamos el data frame: credit
library(Fahrmeir)
data(credit)

# Mostramos primeros 6 registros del data frame
head(credit)

# Mostramos estructura de la base de datos: data frame
str(credit)

# Resumen de las variables del data frame
summary(credit)

# Analizando la variable "Mes": Duración del Préstamo
# Tipo de variable: cuantitativa discreta

# Resumen de la variable
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 4.0    12.0    18.0    20.9    24.0    72.0 
summary(credit$Mes)

# Obtenimieno la frecuencia absoluta
ni <- table(credit$Mes)
ni

# Obteniendo la frecuencia relativa
fi <- prop.table(table(credit$Mes))
fi

# Obteniendo la frecuencua porcentual
pi <- fi*100
pi

# Mostrando tabla de frecuencias
creditDurationTable <- t(rbind(ni,fi,pi))
creditDurationTable

# Visualizando distribución de la variable "Mes"

# Gráfico de Varas
plot(
  pi,
  type="h",
  lwd=2,
  main="Distribución de la duración de los préstamos",
  xlab="Meses de Préstamo",
  ylab="Porcentaje de préstamos")

points(
  x=as.numeric(rows.names(pi)),
  y=as.numeric(pi),
  pch=19,
  cex=1.5)

# Histograma completo
h <- hist(
  credit$Mes,
  col="cornflowerblue",
  main="Distribución de la duración de los préstamos",
  xlab="Meses de Préstamo",
  ylab="Cantidad",
  # xlim=c(1,100)
  breaks = "Sturges"
)

text(h$mids,h$counts,labels=h$counts)

polygon.freq(
  h,
  frequency=1,
  col='red')

# Histograma: Prestamos de 0 a 40 meses
h <- hist(
  credit$Mes,
  col="cornflowerblue",
  main="Distribución de la duración de los préstamos",
  xlab="Meses de Préstamo",
  ylab="Cantidad",
  xlim=c(1,40),
  breaks = "Sturges"
)
