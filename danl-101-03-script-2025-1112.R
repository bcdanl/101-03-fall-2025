library(tidyverse)



# classwork 12 - question 2 -----------------------------------------------

# install.packages("gapminder")
library(gapminder)

df_gapminder <- gapminder::gapminder

ggplot(data = df_gapminder,
       mapping = aes(x = log(gdpPercap),
                     y = lifeExp,
                     color = continent)) +  # different colors are used to distinguish continents
  geom_point(alpha = .5)  # Add 50% transparency to reduce overplotting


ggplot(data = df_gapminder,
       mapping = aes(x = log(gdpPercap),
                     y = lifeExp,
                     color = continent)) +  # different colors are used to distinguish continents
  geom_point(alpha = .5) + # Add 50% transparency to reduce overplotting
  geom_smooth(method = "lm")



ggplot(data = df_gapminder,
       mapping = aes(x = log(gdpPercap),
                     y = lifeExp)) +  # different colors are used to distinguish continents
  geom_point(alpha = .5) + # Add 50% transparency to reduce overplotting
  geom_smooth(method = "lm") +
  facet_wrap( ~ continent )


ggplot(data = df_gapminder,
       mapping = aes(x = log(gdpPercap),
                     y = lifeExp,
                     color = continent)) +  # different colors are used to distinguish continents
  geom_point(alpha = .5) + # Add 50% transparency to reduce overplotting
  geom_smooth(method = "lm") +
  facet_wrap( ~ continent )



# time trend plot ---------------------------------------------------------


tech_october <- 
  read_csv(
    "https://bcdanl.github.io/data/tech_stocks_2025_10.csv"
  )

ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close) ) + 
  geom_line() 



ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close,
          color = Ticker) ) + 
  geom_line() 

ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close,
          group = Ticker) ) + 
  geom_line() 


ggplot( data = tech_october,
        mapping = aes(
          x = Date, 
          y = Close,
          linetype = Ticker) ) + 
  geom_line() 



# histogram ---------------------------------------------------------------

titanic <- 
  read_csv(
    "https://bcdanl.github.io/data/titanic_cleaned.csv")

ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram()


ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(bins = 5)



ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(bins = 1)


ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(bins = 2)


ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(bins = 3)

ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(bins = 4)

ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(bins = 10)

ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(bins = 30)



ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(bins = 60)


ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(binwidth = 1)



ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(binwidth = 2)



ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(binwidth = 2,
                 bins = 5) # ignored




ggplot(data = titanic,
       mapping = 
         aes(x = age)) + 
  geom_histogram(bins = 5, # ignored
                 binwidth = 2
                 ) 



# classwork 13 - time trend plot ------------------------------------------

# install.packages("gapminder")
library(gapminder)
??gapminder
df_gapminder <- gapminder::gapminder


ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     group = country)) +
  geom_point(size = .5,
             color = "black") +
  geom_line()


ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     color = country)) +
  geom_point(size = .5,
             color = "black") +
  geom_line()



ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     color = country)) +
  geom_point(size = .5,
             color = "black") +
  geom_line(show.legend = FALSE)



ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     group = country)) +
  geom_point(size = .5,
             color = "black") +
  geom_line() +
  facet_wrap( ~ continent)

ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     group = country)) +
  geom_point(size = .5,
             color = "black") +
  geom_line() +
  facet_wrap( ~ continent,
              nrow = 1)



ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     group = country)) +
  geom_point(size = .5,
             color = "black") +
  geom_line() +
  facet_wrap( ~ continent,
              ncol = 5)

# error
ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = gdpPercap,
                     group = country)) +
  geom_point(size = .5,
             color = "black") +
  geom_line() +
  facet_wrap( ~ continent,
              ncol = 2,
              nrow = 1)



ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = log(gdpPercap),
                     group = country)) +
  geom_point(size = .5,
             color = "black") +
  geom_line() +
  facet_wrap( ~ continent,
              nrow = 1)



ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = log(gdpPercap))) +
  geom_line(color = 'grey',
             mapping = aes(group = country)) +
  geom_smooth() +
  facet_wrap( ~ continent,
              nrow = 1)



ggplot(data = df_gapminder,
       mapping = aes(x = year,
                     y = log(gdpPercap))) +
  geom_line(mapping = aes(group = country)) +
  geom_smooth() +
  facet_wrap( ~ continent,
              nrow = 1)





# boxplot -----------------------------------------------------------------


ggplot(data = mpg,
       mapping = aes(x = class,
                     y = hwy)) +
  geom_boxplot()

ggplot(data = mpg,
       mapping = aes(y = hwy)) +
  geom_boxplot()


ggplot(data = mpg,
       mapping = aes(y = class,
                     x = hwy)) +
  geom_boxplot()



ggplot(data = mpg,
       mapping = aes(y = class,
                     x = hwy,
                     fill = class)) +
  geom_boxplot()


ggplot(data = mpg,
       mapping = aes(y = class,
                     x = hwy,
                     fill = class)) +
  geom_boxplot(show.legend = FALSE)





# 1. `show.legend = FALSE` turns off 
#     the legend information
# 2. `scale_fill_colorblind()` or
#    `scale_fill_tableau()`
#     applies a color-blind friendly 
#     palette to the `fill` aesthetic
# install.packages("ggthemes")
library(ggthemes) 
ggplot(data = mpg,
       mapping = 
         aes(x = hwy,
             y = class,
             fill = class)) + 
  geom_boxplot(
    show.legend = FALSE) +
  scale_fill_tableau() 

