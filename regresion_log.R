

#Uso de redes sociales o apps
#Objetivo: Usuario activo (1) vs inactivo (0)
#0= menos de 2 hrs
#1=mas de 2 hrs

#Variables:
datos<-data.frame(
  Tiempo_en_app =c(0,1,1,0,1,1,0,0,1,0),
  trabajo =c(1,0,1,1,0,0,1,1,0,0),
  edad =c(18,18,20,22,18,19,17,23,23,22)
) 
  
View (datos)
modelo <-glm(Tiempo_en_app ~ trabajo + edad,
             data=datos,
             family=binomial)
summary(modelo)

variables_ <- data.frame(trabajo = c(0, 1), edad = c(17, 25)) # Valores dos desviaciones estándar alejadas de la media

logit_prediccion <- predict(modelo, newdata = variables_, type = "link")

probabilidad_prediccion <- exp(logit_prediccion) / (1 + exp(logit_prediccion))

probabilidad_prediccion
View(variables_)




