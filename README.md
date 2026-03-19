## hola
# hola su alumna faborita😁✌️
# HOY una explicacion de Regresión Logística Binaria en R
----------------------------------------------------------------------------------------------

# para esto utilisare mi repositorio hecho en classe como modelo #
# En este ejercicio aplique un modelo de **regresión logística binaria** con el objetivo de analizar el uso de una aplicación móvil.
# El propósito es predecir si un usuario es:

# Activo (1): usa la app más de 2 horas
# Inactivo (0): usa la app menos de 2 horas

----------------------------------------------------------------------------------------------

##     Base de datos
# construi una base de datos con tres variables:

# Tiempo_en_app: variable dependiente (0 = inactivo, 1 = activo)
# trabajo: indica si la persona tiene empleo (1 = sí, 0 = no)
# edad: edad de la persona

## Y usamos el Modelo de regresión logística ya que permite estimar la probabilidad de que ocurra un evento (en este caso, ser usuario activo) en función de variables explicativas.

# Se utilizó la función glm() en R para ajustar el modelo:
# modelo <- glm(Tiempo_en_app ~ trabajo + edad,
             data=datos,
             family=binomial)

----------------------------------------------------------------------------------------------

##  Resultados del modelo
# Mediante la función `summary(modelo)` obtuvimos los coeficientes del modelo, los cuales indican:
# La influencia de cada variable (trabajo y edad) sobre la probabilidad de uso de la app
# Y Si estas variables son estadísticamente significativas

----------------------------------------------------------------------------------------------

# 🔮 Predicción de probabilidades 🔮 / Esto nos permitira obtener valores entre 0 y 1 que representen la probabilidad de que una persona sea usuaria activa

# despues se realizaron predicciones para nuevos valores:
# variables_ <- data.frame(trabajo = c(0, 1), edad = c(17, 25))

# Posteriormente, se calcularon las probabilidades:
# logit_prediccion <- predict(modelo, newdata = variables_, type = "link")
# probabilidad_prediccion <- exp(logit_prediccion) / (1 + exp(logit_prediccion))

----------------------------------------------------------------------------------------------

# Para Interpretar tenemos que tener en cuenta QUE:
#  Valores cercanos a (1) indican alta probabilidad de ser usuario activo
#  Valores cercanos a (0) indican baja probabilidad

# Por lo tanto, el modelo permite analizar cómo variables como la edad y el empleo influyen en el uso de la aplicación.

------------------------------------------------------------------------------------------------------

# Conclusión: La regresión logística es una herramienta útil para predecir variables binarias. En este caso, permitió estimar la probabilidad de que un usuario sea activo en función de sus características, facilitando la toma de decisiones basada en datos.


