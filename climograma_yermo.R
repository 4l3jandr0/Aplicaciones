yermo <- file('Yermo.csv')
yermo <- read.csv(yermo, col.names = c('Mes', 'Temperatura', 'Precipitacion'))

library(ggplot2)

ggplot(data = yermo, mapping = aes(x = Mes, y = Temperatura)) +
        geom_col(mapping = aes(x = Mes, y = Precipitacion)) +
        geom_smooth(method = 'auto', mapping = aes(y = Mes, 
                                                  x = Precipitacion))
