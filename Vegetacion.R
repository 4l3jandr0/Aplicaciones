vegetacion <- file('Vegetation2.txt')
vegetacion <- read.table(vegetacion, header = TRUE)
View(vegetacion)
grafica_dispersion <- plot(vegetacion$BARESOIL, vegetacion$R)
