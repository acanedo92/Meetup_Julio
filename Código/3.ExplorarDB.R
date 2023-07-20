###############################################################################
## FUNCIONES PARA EXPLORAR ExperimentoFRAME
###############################################################################
Experimento <- read.csv("BiomasaHongos.csv", sep = ",", header = T)

str(Experimento) #obtener el tipo de objeto/vector de 
dim(Experimento) #obtener las dimensiones del objetos 
names(Experimento) #debido a qué es un Experimento frame (compuesto de columnas y renglones), queremos conocer el nombre de las etiquetas de cada columna
summary(Experimento) #nos muestra datos estadísticos de cada uno de los vectores en el Experimento

---
# Acceder a los elementos, o columnas del Experimento frame
# objeto/simbolo de $/ autocompletar
---
Experimento$

---
?attach() # Permite acceder a los objetos en la base de datos simplemente dando sus nombres.
attach(Experimento) 

names(Experimento)

Especie
Tratamiento
Biomasa

---
# Seleccionar elementos de un Experimento frame
# nombre[renglones, columnas]  
  Experimento[1,] #Seleccionar el renglón 1
  Experimento[,1] #Seleccionar la columna 1
  Experimento[1:5,] #Seleccionar un rango de renglones
  Experimento[-1,] #Excluir el renglón 1
  Experimento[-(1:10),] #Excluir los renglones del 1 al 10
---

ncol(Experimento) #obtener el numero de columnas del Experimento frame
nrow(Experimento) #obtener el numero de renglones del Experimento frame


#explorar las categorias o los diferentes niveles de los grupos de tratamientos en el experimento
levels(Tratamiento)
#transformar a un objeto tipo factor el cual se caracteriza por tener niveles jerarquicos asociados
levels(as.factor(Tratamiento))

#Contar el número de categorías que resultan de la función anterior:
#Funciones aninadas
length(levels(as.factor(Tratamiento))) #¿cuántos tratamientos se realizaron en el experimento?

#############################################################################
# CREANDO UN SUBSET
###############################################################################
# ¿Cuántas repeticiones se realizaron por especie en cada uno de los tratameintos del experimento?

?subset()
F.solani <- subset(Experimento, Especie =="Fsolani")
A.niger  <- subset(Experimento, Especie =="AspNiger")

########################################################################
# TO DO:
########################################################################
1. ¿Cuántas repeticiones se realizaron por tratamiento?  
  Crear un subset para cada tratamiento

2. Explora el número de elementos de cada subset con las funciones  
dim()  
ncol()  
nrow()  
leveles()  
length()  

#############################################################################
# GENERACIÓN DE GRÁFICOS
###############################################################################

plot(Experimento$Biomasa) #Visualizar la distribucion de los datos
plot(density(Biomasa)) # ¿se ajustan a una campana tipo gaus?, la funcion plot() anidada con density() me ayuda a visualizar la distribucion de mis datos
boxplot(Biomasa~ Tratamiento) #Boxplot por tratamiento

#################################################################################
# Pruebas de normalidad
#################################################################################
shapiro.test(Biomasa)
#¿el valor de p, es mayor, o menor, a 0.05?
#p>0.05: HAY NORMALIDAD
#P<0.05: NO HAY NORMALIA


