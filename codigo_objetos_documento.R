
#Paquetes####
library(knitr)

#Tablas####

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
