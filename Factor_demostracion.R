vector_dia <- c('mañana', 
                'medio día',
                'tarde',
                'noche',
                'media noche',
                'noche',
                'media noche',
                'mañana', 
                'medio día',
                'tarde')

factor_dia <- factor(vector_dia,
                     ordered = TRUE,
                     levels = c('mañana',
                                'medio día',
                                'tarde',
                                'noche',
                                'media noche'))


nlevels(factor_dia)

levels(factor_dia)

levels(factor_dia) <- list(Temprano = c('mañana',
                                        'medio día'),
                           Tarde = c('tarde',
                                     'noche',
                                     'media noche'))


is.ordered(factor_dia)

#No ordenado

factor_dia <- factor(vector_dia,
                     levels = c('mañana',
                                'medio día',
                                'tarde',
                                'noche',
                                'media noche'))

relevel(factor_dia, ref = 'media noche')

as.ordered(factor_dia)
