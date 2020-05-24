# Exploración de datos de créditos bancarios

Exploración de datos de una base de datos de créditos bancarios de la librería Fahrmeir en R. 

## Paquetes

	install.packages("Fahrmeir")
	install.packages("ggplot2")
	install.packages("agricolae")

## Fuente de datos
	
	library(Fahrmeir)
	data(credit)
	
## Atributos

> **Y**: Estado crediticio del cliente (0 = Cliente es solvente, 1 = Cliente no es solvente).

>**Cuenta**: Calidad de la cuenta bancaria del cliente (0 = No tiene cuenta bancaria, 1 = Mala, 2 = Buena).

>**Mes**: Duración del préstamo (en meses).

>**Ppag**: Comportamiento crediticio previo (0 = Buen pagador, 1 = Mal Pagador).

>**Uso**: Intención de uso (0 = Privado, 1 = Profesional).

>**DM**: Monto del préstamo (en marcos alemanes).

>**Sexo**: Sexo del cliente (0 = Mujer, 1 = Hombre).

>**Estc**: Estado civil del cliente (0 = No vive solo, 1 = Vive solo).

## Distribución de la duración de préstamos

![grafico_distribucion_duracion_prestamo](http://www.solocodigoweb.com/wp-content/uploads/2020/05/grafico_varas_meses_prestamo.jpg)

## Distribución del monto de préstamos

![grafico_distribucion_monto_prestamo](http://www.solocodigoweb.com/wp-content/uploads/2020/05/grafico_densidad_monto_prestamo.jpg)
