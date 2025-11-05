library(tidyverse)
mpg <- ggplot2::mpg
?mpg


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point()


ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_smooth()



ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() +
  geom_smooth()



ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) +
  geom_point()
+ geom_smooth()


ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) +
  geom_point() +
  geom_smooth()



ggplot(data = mpg,
       mapping = aes(x = displ,
                     y = hwy)) +
  geom_point() +
  geom_smooth(method = "lm")

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



ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy,
              color = class) ) + 
  geom_point()


ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy,
              shape = class) ) + 
  geom_point()


ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy,
              size = class) ) + 
  geom_point()

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
# quote color name when manually setting it to color
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

ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy) ) + 
  geom_smooth(color = "darkorange",
              fill = "darkorange") 

# e.g., 'fill' aethetics 
#     does not work with geom_point()
ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy) ) + 
  geom_point(fill = "blue")


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


# less appealing than color!
ggplot(data = mpg,
       mapping = 
         aes(x = displ, 
             y = hwy,
             alpha = class) ) + 
  geom_point() 



ggplot( data = mpg,
        mapping = 
          aes(x = displ, 
              y = hwy) ) + 
  geom_point()
