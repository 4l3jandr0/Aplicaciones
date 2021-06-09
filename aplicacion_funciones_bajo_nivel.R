# Función points()
# Plantear tu sistema de coordenadas

plot(-4:4, -4:4, type = "n", xlab = 'Cuatro de x', ylab = 'Cuatro de y',
     main = 'Demostración', pch = 8, col = 'green', ylim = c(-6,6),
     xlim = c(-6, 6))
# Agregar los datos que se distribuirán en dicho sistema

points(rnorm(200), rnorm(200), col = "red")

points(rnorm(100)/2, rnorm(100)/2, col = "blue", cex = 1.5)

# Uso de lines() con los datos:

x <- c(1:10)
y1 <- x*x
y2  <- 2*y1

# Primero una de las líneas

plot(x, y1, type = "b", frame = F, pch = 19, 
     col = "red", xlab = "x", ylab = "y")

# Para agregar otra línea

lines(x, y2, pch = 18, col = "blue", type = "b", lty = 2)

# Si queremos una línea rect

abline(v = mean(x), col="red", lwd=1, lty=5)

otro <- file('Vegetacion2.txt')
bla_bla <- read.csv(otro)