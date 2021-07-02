vector_genero <- c('H', 
                   'M', 
                   'H', 
                   'H')

class(vector_genero)

factor_vector_genero <- factor(vector_genero)

class(factor_vector_genero)

View(factor_vector_genero)

#Variable categorica nominal = EL ORDEN NO IMPORTA


#Variable categorica ordinal = EL ORDEN SI IMPORTA

vector_dia <- c('evening', 
                'morning', 
                'afternoon', 
                'midday', 
                'midnight', 
                'evening')

factor_dia <- factor(vector_dia, 
                     order = TRUE, 
                     levels = c('morning', 
                                'midday', 
                                'afternoon', 
                                'evening', 
                                'midnight'))

summary(factor_dia)