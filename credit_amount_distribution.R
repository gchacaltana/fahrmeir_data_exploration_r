# Instalación de paquetes
# install.packages("Fahrmeir")
# install.packages("agricolae")

# Cargamos el data frame: credit
library(Fahrmeir)
data(credit)

# Mostramos primeros 6 registros del data frame
head(credit)

# Mostramos estructura de la base de datos: data frame
str(credit)

# Resumen de las variables del data frame
summary(credit)

# Analizando la variable "DM": Monto del Préstamo
# Tipo de variable: cuantitativa continua

# Resumen de la variable
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 250    1366    2320    3271    3972   18424
summary(credit$DM)

# Obteniendo tabla de frecuencia (agrupada)
library(agricolae)
(table.freq(graph.freq(credit$DM,plot=FALSE)))

# Resultado:
# Lower Upper  Main Frequency Percentage   CF   CPF
# 1    200  1860  1030       388       38.8  388  38.8
# 2   1860  3520  2690       301       30.1  689  68.9
# 3   3520  5180  4350       133       13.3  822  82.2
# 4   5180  6840  6010        66        6.6  888  88.8
# 5   6840  8500  7670        53        5.3  941  94.1
# 6   8500 10160  9330        21        2.1  962  96.2
# 7  10160 11820 10990        15        1.5  977  97.7
# 8  11820 13480 12650        10        1.0  987  98.7
# 9  13480 15140 14310         8        0.8  995  99.5
# 10 15140 16800 15970         4        0.4  999  99.9
# 11 16800 18460 17630         1        0.1 1000 100.0