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

# Tabla de Frecuencia: Regla Sturges Agricolae
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

# Tabla de Frecuencia: Scott
(table.freq(hist(credit$DM, breaks = "Scott", plot = FALSE)))

# Resultado
# Lower Upper  Main Frequency Percentage   CF   CPF
# 1      0  1000   500       116       11.6  116  11.6
# 2   1000  2000  1500       316       31.6  432  43.2
# 3   2000  3000  2500       188       18.8  620  62.0
# 4   3000  4000  3500       134       13.4  754  75.4
# 5   4000  5000  4500        58        5.8  812  81.2
# 6   5000  6000  5500        39        3.9  851  85.1
# 7   6000  7000  6500        44        4.4  895  89.5
# 8   7000  8000  7500        35        3.5  930  93.0
# 9   8000  9000  8500        17        1.7  947  94.7
# 10  9000 10000  9500        13        1.3  960  96.0
# 11 10000 11000 10500        11        1.1  971  97.1
# 12 11000 12000 11500         8        0.8  979  97.9
# 13 12000 13000 12500         8        0.8  987  98.7
# 14 13000 14000 13500         1        0.1  988  98.8
# 15 14000 15000 14500         7        0.7  995  99.5
# 16 15000 16000 15500         4        0.4  999  99.9
# 17 16000 17000 16500         0        0.0  999  99.9
# 18 17000 18000 17500         0        0.0  999  99.9
# 19 18000 19000 18500         1        0.1 1000 100.0
