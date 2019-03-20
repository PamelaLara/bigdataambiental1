# Asignar secuencia a un objeto del 1 al 20
mi_seq2 <- seq(1:20)

# Asignar otra secuencia
mi_seq3 <- seq(10:20)

?seq

?seq.Date

?matrix

matriz <- matrix(seq(1:9),nrow=3,ncol=3)
matriz

numeros <-c(1,2,3)
numeros

texto <-c("pamela","lara","molina")
texto

booleanos <-c(TRUE, FALSE,TRUE)
booleanos

data_frame <-data.frame(numeros,texto,booleanos)
data_frame

data_frame[1:2,1:2]

#Condiciones para la seleccion de elementos
10>5
matriz
matriz[matriz>3]<-999

install.packages("raster")
library("raster")

raster_matriz <- raster(matriz)
raster_matriz

plot(raster_matriz)

matriz

points(0.25,0.75,pch=21,bg="red",cex=2)

raster_nuevo = raster_matriz - 0.3*(raster_matriz)

#para cargar archivo desde el pc
rapid_eye_1 <- brick("C:/Repositorio GitHub/curso_r_conabio/curso_r_conabio/1crop.tif")

rapid_eye_1

install.packages("rgdal")

#visualizador de bandas RGB
plotRGB(rapid_eye_1,r=3,g=2,b=1)

dim(rapid_eye_1)

VIS <- subset(rapid_eye_1,subset=3)

NIR <- subset(rapid_eye_1,subset=5)

par(mfrow=c(1,2))

plot(VIS,main="VIS")

plot(NIR,main="NIR")

ndvi <- (NIR-VIS)/(VIS+NIR)

plot(ndvi)

#Para guardar el archivo en la carpeta
rf <- writeRaster(ndvi,filename = "C:/Repositorio GitHub/ndvi.tif",format="GTiff",overwrite=TRUE)

