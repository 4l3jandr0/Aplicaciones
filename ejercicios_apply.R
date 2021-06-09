install.packages()

ejercicio_apply <- matrix(1:20, nrow = 5)
convertida <- apply(ejercicio_apply, 2, 
                    as.numeric)
apply(convertida, 2, class)
convertida <- as.data.frame(convertida)
class(convertida)

library(dplyr)
convertida <- convertida %>% 
        mutate(convertida, caracter = as.character(V2))
class(convertida[,5])
lapply()
sapply()
tapply()


5*conversion

