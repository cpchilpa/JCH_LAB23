####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Jair Chilpa Hernández (UAEH)
# LABORATORIO - Graficas animadas con ggplot2


#################################################
# Objetivo: hacer graficas animadas con ggplot2
# ------------------------------------------------

# En este ejercicio vamos a:
# 1. grafica basica
# 2. animando grafica
# 3. mejorando animacion

# cargando libreria tidyverse
library(tidyverse)

# instalando paquete para animar
install.packages('gganimate')
library(gganimate)

install.packages('gifski')
library(gifski)

# instalando paquete con los datos
# install.packages("gapminder")

# cargando paquete con los datos
library(gapminder)

# cargando datos a entorno
data("gapminder")

# cargando datos a entorno
head(gapminder)

################################
# 1. grafica basica
################################
g_animada<- gapminder %>%
  group_by(year, continent) %>%
  summarize (mean_life = mean(lifeExp)) %>%
  ggplot(aes (x = year,
              y = mean_life,
              color = continent)) +
  geom_line()

g_animada


################################
# 2. animando grafica
################################
g_animada + transition_reveal(year)
