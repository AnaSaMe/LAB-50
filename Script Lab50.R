#------------------------LABORATORIO 50---------------------------------------
# Hecho con gusto por Dra. Carla Carolina Pérez Hernández
#V6
#-------------------Alumna: Ana Grisel Sanjuan Merida--------------------------
#LABORATORIO - Gráficos en R con ggplot2 para Ciencia de Datos
#Manipular leyendas

#Instalar paquetes con los datos
install.packages("gapminder")
install.packages("ggplot2")

#Cargar libreria ggplot2 y gapminder
library(ggplot2)
library(gapminder)

#OPCIÓN 1
#Del lab anterior, se abre el Script 
#Clic en Source

#OPCIÓN 2

#Cargar datos a entorno
data("gapminder")

#Filtrando por año 2007
gapminder2007 <- gapminder[gapminder$year == '2007', ]

#Colocando texto base
#Creamos variable p en el entorno de variables
p <- ggplot(data = gapminder2007,
            mapping = aes(x = gdpPercap,
                          y = lifeExp,
                          color = continent)) +
  geom_point()

#Mostrar la gráfica
p

#Quitar titulo de la leyenda
#Al objeto p se le añade capa para quitar título
p + theme(legend.title = element_blank())

#Quitar toda la leyenda junto con los continentes enlistados
p + theme(legend.position = "none")


#Cambiar la leyenda de posición
#Opciones: # rigth, left, bottom, top
p + theme(legend.position = "top")

#Cambiar con coordenadas de 0 a 1
#Se añade capa al objeto p
#La ubicacion está en la coordenada 0.5 (enmedio de la X y Y)
p + theme(legend.position = c(0.5, 0.5))

#Se añade capa al objeto p
#La ubicacion está en la coordenada 0.8 (a la derecha de la X)
p + theme(legend.position = c(0.8, 0.3))

#----------------------------FIN LABORATORIO 50--------------------------