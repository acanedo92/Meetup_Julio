###############################################################################
# CARGAR BASES DE DATOS
###############################################################################

# Conoce tu directorio actual de trabajo, copia la estructura de la dirección y modificala de acuerdo al sitio dónde se encuentren tus archivos.
getwd() 
#Establece tu directorio de trabajo:
setwd("/home/anahi/Escritorio/Primeros-Pasos-en-R/DataBases/") #establecer la ruta al directorio en que se encuentran los archivos que deseas leer

############################################################################### 
# Archivos .csv 
###############################################################################
             
?read.csv()
             
data <- read.csv("BiomasaHongos.csv", sep = ",", header = T)
head(data)          


