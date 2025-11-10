# Classwork 11
# Question 1 --------------------------------------------------------------


library(tidyverse)

df <- read_csv("http://bcdanl.github.io/data/icecream-shark-df.csv")

ggplot(data = df,
       mapping = aes(x = IceCreamSales,
                     y = SharkAttacks)) +
  geom_point() +
  geom_smooth()




# Q2 ----------------------------------------------------------------------

nbc_show <- read_csv("https://bcdanl.github.io/data/nbc_show.csv")

ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE)) +
  geom_point() +
  geom_smooth()


ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE)) +
  geom_point() +
  geom_smooth(method = "lm")



# Question 3 --------------------------------------------------------------

# install.packages("gapminder")
library(gapminder)
??gapminder

df_gapminder <- gapminder::gapminder


ggplot(data = df_gapminder,
       mapping = aes(x = gdpPercap,
                     y = lifeExp)) +
  geom_point(alpha = .1) + # Add transparency to reduce overplotting
  geom_smooth(color = "darkorange") +
  geom_smooth(method = "lm")



ggplot(data = df_gapminder,
       mapping = aes(x = log(gdpPercap),
                     y = lifeExp)) +
  geom_point(alpha = .1) + # Add transparency to reduce overplotting
  geom_smooth(color = "darkorange") +
  geom_smooth(method = "lm")




# facet -------------------------------------------------------------------


ggplot(data = gapminder,
       mapping = 
         aes(x = log10(gdpPercap), 
             y =lifeExp)) + 
  geom_point(alpha = .4)


ggplot(data = gapminder,
       mapping = 
         aes(x = log10(gdpPercap), 
             y =lifeExp)) + 
  geom_point(alpha = .4) + 
  facet_wrap( ~ continent)



# classwork 12 ------------------------------------------------------------



# question 1 --------------------------------------------------------------


ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE,
                     color = Genre)) +
  geom_point() +
  geom_smooth(method = "lm",
              se = FALSE)   # se = FALSE turns off the ribbon



ggplot(data = nbc_show,
       mapping = aes(x = GRP,
                     y = PE)) +
  geom_point() +  
  geom_smooth(method = "lm",
              se = FALSE) +  # se = FALSE turns off the ribbon
  facet_wrap( ~ Genre)



