library(tidyr)
library(readr)
library(tidyverse)
library(fs)
setwd("C:/Users/DIEGO_MORENO/Documents/PROFE_ADRIANA/0000SET/003/") ### usar Ctrl+Shift+H para ubicar la carpeta que contiene los archivos
fotos=as.data.frame(list.files())
names(fotos)=c("archivo")

guia=fotos %>%
  separate(archivo, into = c("IMG", "NUMERO", "BANDA"), sep = "_")

guia=as.data.frame(guia)
idfotos=guia$NUMERO
idfotos=as.numeric(idfotos)


par=idfotos%%3==0
datos=cbind(idfotos, par)

DEPURAR=cbind(fotos, datos)

ID=which(DEPURAR$par==1)

#file.copy(from = "D:/DRONE FOTOS/LA_PLAYA/0000SET/000/IMG_0000_1.tif", paste0("D:/DRONE FOTOS/LA_PLAYA/PRUEBA/", Sys.Date(), ".tif"))

file.copy(from = list.files()[ID], paste0("C:/Users/DIEGO_MORENO/Documents/PROFE_ADRIANA/0000SET/3"))
