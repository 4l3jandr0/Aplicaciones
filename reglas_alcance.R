#Asignar el nombre de una función existente a un objeto
#¿Qué sucedería?

read.table <- function(x) {
        x = 2*2
}
read.table
#¿Qué tal así?
read.table()

#Dentro deuna función

w <- 5
ff <- function() {
        w <- 3
        MiFunc(2, 5)
}

MiFunc <- function(x, y) {
        r <- x*y + w
        r
}

ff()

#¿Será lo mismo?

w <- 5
ff <- function() {
        MiFunc <- function(x, y) {
                r <- x*y + w
                r
        }
        
        w <- 3
        MiFunc(2, 5)
}

ff()