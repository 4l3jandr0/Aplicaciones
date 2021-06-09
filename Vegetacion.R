vegetacion <- file('Vegetation2.txt')
vegetacion <- read.table(vegetacion, header = TRUE)
View(vegetacion)
grafica_dispersion <- plot(x = vegetacion$BARESOIL, y = vegetacion$R)

# Más especificaciones personalizar la gráfica.

plot(x = vegetacion$BARESOIL, y = vegetacion$R,
     xlab = 'Exposición del suelo',
     ylab = 'Riqueza de especies', main = 'Gráfica de dispersión',
     xlim = c(0,45), ylim = c(4,19),
     pch = 15)

# Cambio del color de los símbolos de acuerdo al tipo de transecto.

vegetacion$Transect <- as.numeric(vegetacion$Transect)

plot(vegetacion$BARESOIL, vegetacion$R,
     xlab = 'Exposición del suelo',
     ylab = 'Riqueza de especies', main = 'Gráfica de dispersión',
     xlim = c(0,45), ylim = c(4,19),
     pch = vegetacion$Transect,
     col = vegetacion$Time)

# Si la variable categórica 'Transecto' fuera un Factor. El cambio de simbolos
# no sería posible.

vegetacion$Transect <- factor(vegetacion$Transect)

plot(vegetacion$BARESOIL, vegetacion$R,
     xlab = 'Exposición del suelo',
     ylab = 'Riqueza de especies', main = 'Gráfica de dispersión',
     xlim = c(0,45), ylim = c(4,19),
     pch = vegetacion$Transect,
     col = vegetacion$Time)