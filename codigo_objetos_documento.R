#==============================================#
# Fichero....: codigo_objetos_documento.R      #
# Creado el..:14jun2021                        #
# Actualizado:15jun2021                        #
# Contenido..:El código de los objetos que se  #
# agregarán a los ocumentos de Markdown        #
# Autor......:Alejandro Franco Uriostegui      #
#----------------------------------------------#
# Código de los objetos para manual de curso   #
#==============================================#

#Paquetes####
library(knitr)
library(dplyr)

#Obtener ayuda####
ayuda_fun <- c('help () o ?', 
               'help.search()',
               'help.start()',
               'apropost()',
               'example()',
               'vignette()',
               'find()',
               'demo()',
               'history()')

ayuda_expli <- c('Ayuda sobre una función',
                 'Relacionado con una cadena de texto',
                 'Demuestra alguna característica',
                 'la que sigue',
                 'la que sigue',
                 'la que sigue',
                 'la que sigue',
                 'la que sigue',
                 'la que sigue')

ayuda_tabla <- cbind(ayuda_fun, ayuda_expli)

ayuda_tabla <- kable(ayuda_tabla, col.names = c('Funciones', 'Uso'))

#Operadores clasi ####

op_todos <- c('[]', '[[]]', '$')

op_objetos <- c('Vectores, ', 'Matrices, listas', 'Matrices, data frames')

op_tabla <- cbind(op_todos, op_objetos)

op_tabla <- kable(op_tabka, col.names = c('Operador', 'Objeto'))

#Data frame en extracción de datos

morfometria <- read.csv('Morfometria_ejercicio.csv', header = TRUE)

morfometria <- morfometria %>% 
        select(wingcrd, tarsus, head, Wt) %>% 
        slice(1:8)
