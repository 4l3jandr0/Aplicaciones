ruta.7marzo <- choose.files('D:/Documentos/R_Datos-Proyectos-Asociados/Proyecto tesis/Completo_7Marzo.csv')

marzo_7 <- read.csv(file = 'D:/Documentos/R_Datos-Proyectos-Asociados/Proyecto tesis/Completo_7Marzo.csv',
                    header = TRUE, sep = ',')

View(marzo_7)

a_ver <- list(Prueba = c('si', 'cierto', 'que', 'sacan', '10'), 
              De = matrix(c(7, 1, 7, 0, 3, 1, 4, 7, 3), 
              ncol = 3, byrow = TRUE), 
              Fuego = c('quiero', 'mi', 'título', 'ahora'))
View(a_ver)

# Función de prueba para ejercicio

positivo <- function(x) { if (x > 0)
  print('positivo')
else  print('negativo o cero') }

"negativo <- function(x) { if (x < 0)
  print('negativo')
  else  print('positivo o cero') }"