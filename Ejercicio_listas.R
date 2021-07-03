
#Extracción de datos de una lista

# []; [[]] & $

ejercicio_matriz <- matrix(c(62, 635, 40, 658), nr=2)

dimnames(ejercicio_matriz) <- list(c('Murieron', 'Sobrevivieron'),
                                   c('Placebo', 'Metoprolol'))

chi_test <- chisq.test(ejercicio_matriz)

chi_test

str(chi_test)

chi_test[['observed']][2]

chi_test$p.value

prueba_importar <- file('Yermo.csv')

prueba_importar <- read.csv(prueba_importar, 
                            col.names = c('Mes', 
                                       'Temperatura', 
                                       'Precipitacion'))
