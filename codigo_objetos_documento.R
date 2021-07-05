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
library(readxl)

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

#Extraccion de bases####

base_toxinas <- read_xlsx('Toxinas.xlsx',
                          sheet = 1,
                          na = 'NA')
toxina_PLA2 <- base_toxinas %>% 
        select(Species, PLA2) %>% 
        mutate(Toxina = c('PLA2')) %>% 
        filter(!is.na(PLA2)) %>% 
        select(Species, Toxina)

toxina_SVSP <- base_toxinas %>% 
        select(Species, SVSP) %>% 
        mutate(Toxina = c('SVSP')) %>% 
        filter(!is.na(SVSP)) %>% 
        select(Species, Toxina)

toxina_SVMP <- base_toxinas %>% 
        select(Species, SVMP) %>% 
        mutate(Toxina = c('SVMP')) %>% 
        filter(!is.na(SVMP)) %>% 
        select(Species, Toxina)

toxina_LAAO <- base_toxinas %>% 
        select(Species, LAAO) %>% 
        mutate(Toxina = c('LAAO')) %>% 
        filter(!is.na(LAAO)) %>% 
        select(Species, Toxina)

toxina_3FT <- base_toxinas %>% 
        select(Species, `3FT`) %>% 
        mutate(Toxina = c('FT')) %>% 
        filter(!is.na(`3FT`)) %>% 
        select(Species, Toxina)
        
toxina_KUN <- base_toxinas %>% 
        select(Species, KUN) %>% 
        mutate(Toxina = c('KUN')) %>% 
        filter(!is.na(KUN)) %>% 
        select(Species, Toxina)

toxina_CRiSP <- base_toxinas %>% 
        select(Species, CRiSP) %>% 
        mutate(Toxina = c('CRiSP')) %>% 
        filter(!is.na(CRiSP)) %>% 
        select(Species, Toxina)

toxinas_todo <- bind_rows(toxina_LAAO, toxina_PLA2,
                          toxina_SVMP, toxina_SVSP,
                          toxina_3FT, toxina_KUN,
                          toxina_CRiSP)

toxinas_todo[,2] <- as.factor(toxinas_todo$Toxina)

