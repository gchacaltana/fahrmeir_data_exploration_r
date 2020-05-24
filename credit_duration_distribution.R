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

# Obtenimieno la frecuencia absoluta
ni<-table(credit$Mes)
ni

# Obteniendo la frecuencia relativa
fi<-prop.table(table(credit$Mes))
fi

# Obteniendo la frecuencua porcentual
pi<-fi*100
pi

# Visualizando distribución de la variable "Mes"

# Gráfico de Barras
barplot(
  pi,
  col='black',
  main="Distribución de la duración de los préstamos",
  xlab="Meses de Préstamo",
  ylab="Proporción Porcentual")
