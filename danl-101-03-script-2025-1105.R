
# package -----------------------------------------------------------------


library(tidyverse)



# mpg data.frame ----------------------------------------------------------


mpg <- ggplot2::mpg
?mpg




# first ggplot ------------------------------------------------------------


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point()



# fitted line with geom_smooth() ------------------------------------------


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_smooth()




# two geometric objects in one ggplot -------------------------------------


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() +
  geom_smooth()




# adding layers using + ---------------------------------------------------

# error b/c the location of +
ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) +
  geom_point()
+ geom_smooth()


# + should be located at the end of each line when changing lines
ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) +
  geom_point() +
  geom_smooth()



# geom_smooth(method = "lm") ----------------------------------------------


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() +
  geom_smooth(method = "lm")



# transparency with alpha -------------------------------------------------


# alpha should be between 0 and 1

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(alpha = 0.8) # 50%

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(alpha = 0.3) # 30%

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(alpha = 1) # no transparency

ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() # no transparency


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point(alpha = 0) # full transparency



# to have both scatterplot and fitted line
ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy) ) + 
  geom_point( alpha = .5 ) +
  geom_smooth()


ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy) ) + 
  geom_point( alpha = .5 ) +
  geom_smooth(method = "lm")



# aesthetic mapping -------------------------------------------------------

# color aesthetic mapping
ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy,
              color = class) ) + 
  geom_point()


# shape aesthetic mapping
ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy,
              shape = class) ) + 
  geom_point()


# size aesthetic mapping
ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy,
              size = class) ) + 
  geom_point()


# setting color aesthetic, manually
ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy) ) + 
  geom_point(color = "blue")

ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy) ) + 
  geom_point(color = "red")


# Caution: Error: object 'blue' not found
  # Quote color name when manually setting it to color
ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy) ) + 
  geom_point(color = blue)


ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) + 
  geom_smooth() 


ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) + 
  geom_smooth(color = "darkorange") 

# fill mapping in geom_smooth() is for the color of ribbon
ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) + 
  geom_smooth(color = "darkorange",
              fill = "darkorange") 


# each geom_*() function has a different set of aesthetic properties
# e.g., 'fill' aethetics 
#     does not work with geom_point()
ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy) ) + 
  geom_point(fill = "blue")


# setting size aesthetic, manually
ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy) ) + 
  geom_point(size = 3)

ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy) ) + 
  geom_point(size = 1) # default


# alpha aesthetic mapping, which is
# less visually appealing than color one!
ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy,
             alpha = class) ) + 
  geom_point() 



# clutter is your enemy ---------------------------------------------------


ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy) ) + 
  geom_point()
