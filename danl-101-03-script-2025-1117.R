library(tidyverse)
# install.packages("ggthemes")
library(ggthemes)


ggplot( data = mpg,
        mapping = 
          aes(x = displ,
              y = hwy, 
              color = class) ) + 
  geom_point(size = 3)

ggplot( data = mpg,
        mapping = 
          aes(x = displ,
              y = hwy, 
              color = class) ) + 
  geom_point(size = 3) +
  scale_color_colorblind()

ggplot( data = mpg,
        mapping = 
          aes(x = displ,
              y = hwy, 
              color = class) ) + 
  geom_point(size = 3) +
  scale_color_tableau()


# 1. `show.legend = FALSE` turns off 
#     the legend information
# 2. `scale_fill_colorblind()` or
#    `scale_fill_tableau()`
#     applies a color-blind friendly 
#     palette to the `fill` aesthetic
# install.packages("ggthemes")
# library(ggthemes) 
ggplot(data = mpg,
       mapping = 
         aes(x = hwy,
             y = class,
             fill = class)) + 
  geom_boxplot(
    show.legend = FALSE) +
  scale_fill_tableau() 



ggplot(data = mpg,
       mapping = 
         aes(x = hwy,
             y = class,
             fill = class)) + 
  geom_boxplot(
    show.legend = FALSE) +
  scale_color_tableau()  # not effective


# labs() can label
#   x-axis, y-axis, and more

ggplot(data = mpg,
       mapping = 
         aes(x = hwy,
             y = 
               fct_reorder(class, hwy),
             fill = class)) + 
  geom_boxplot(
    show.legend = FALSE) +
  scale_fill_tableau() +
  labs(x = "Highway MPG",
       y = "Class") 


ggplot(data = mpg,
       mapping = 
         aes(x = hwy,
             y = 
               fct_reorder(class, -hwy),
             fill = class)) + 
  geom_boxplot(
    show.legend = FALSE) +
  scale_fill_tableau() +
  labs(x = "Highway MPG",
       y = "Class") 



# bar charts --------------------------------------------------------------

diamonds <- ggplot2::diamonds

ggplot(data = diamonds,
       mapping = aes(x = cut)) + 
  geom_bar()

ggplot(data = diamonds,
       mapping = aes(y = cut)) + 
  geom_bar()


# count() -----------------------------------------------------------------

df_cut <- diamonds |> 
  count(cut)


# colorful bars -----------------------------------------------------------

ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = cut)) +
  geom_bar()


ggplot(data = diamonds,
       mapping = aes(x = cut,
                     color = cut)) +
  geom_bar()



ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = cut)) +
  geom_bar(show.legend = FALSE)


df_cut_clarity <- diamonds |> 
  count(cut, clarity)




ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = cut)) +
  geom_bar()

ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = clarity)) +
  geom_bar()


ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = clarity)) +
  geom_bar(position = "fill") +
  labs(y = "Proportion")


ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = clarity)) +
  geom_bar(position = "dodge") 




ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = clarity)) +
  geom_bar(position = "stack") 
ggplot(data = diamonds,
       mapping = aes(x = cut,
                     fill = clarity)) +
  geom_bar() 




# prop bar chart ----------------------------------------------------------


ggplot(data = diamonds,
       mapping = aes(x = cut,
                     y = after_stat(prop),
                     group = 1)) +
  geom_bar()


ggplot(data = diamonds,
       mapping = aes(x = cut,
                     y = after_stat(prop))) +
  geom_bar()


ggplot(data = diamonds,
       mapping = aes(x = cut,
                     y = after_stat(prop),
                     group = 1)) +
  geom_bar()




# geom_col() --------------------------------------------------------------

df <- mpg |> 
  count(class)


ggplot(data = df,
       mapping = aes(x = class,
                     y = n)) +
  geom_col()


ggplot(data = df,
       mapping = aes(y = class,
                     x = n)) +
  geom_col()

# error
ggplot(data = df,
       mapping = aes(y = class)) +
  geom_col()



# sorted bars
ggplot(data = df,
       mapping = aes(y = fct_reorder(class, n),
                     x = n)) +
  geom_col()

ggplot(data = df,
       mapping = aes(y = fct_reorder(class, n),
                     x = n)) +
  geom_col() +
  labs(y = "Class")


ggplot(data = df,
       mapping = aes(y = fct_reorder(class, n),
                     x = n,
                     fill = class)) +
  geom_col(show.legend = FALSE) +
  labs(y = "Class") +
  scale_fill_colorblind()



# classwork 14 ------------------------------------------------------------

# install.packages("ggthemes")
# library(ggthemes)
# library(tidyverse)

flights <- nycflights13::flights

# q1
ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_histogram(bins = 1) # doesn't make sense!


ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_histogram(binwidth = 1)


# q2, pt.A
ggplot(data = flights,
       mapping = aes(x = air_time)) +
  geom_histogram(bins = 50,
                   fill = "lightblue") +
  facet_wrap( ~ origin)

# q2, pt.B
ggplot(data = flights,
       mapping = aes(x = air_time,
                     y = origin,
                     fill = origin,
       )) +
  geom_boxplot(show.legend = FALSE) +
  scale_fill_colorblind() # or scale_fill_tableau()

# q3
top3_n <- flights |> 
  count(carrier) |> 
  arrange( desc(n) ) |> 
  head(3)  # returns the first 3 observations in the given data.frame


# q4
top3_carriers <- flights |> 
  filter(carrier == "UA" | carrier == "B6" | carrier == "EV" ) |> 
  select(month, day, dep_time, carrier, origin, dest)


# q5, pt.A bar chats
ggplot(data = top3_carriers,
       mapping = aes(y = carrier,
                     fill = carrier)) +
  geom_bar(show.legend = FALSE) +
  scale_fill_colorblind()

ggplot(data = top3_carriers,
       mapping = aes(y = carrier,
                     fill = carrier)) +
  geom_bar(show.legend = FALSE) +
  scale_fill_tableau()



# q5, pt.B. prop bar charts
ggplot(data = top3_carriers,
       mapping = aes(y = carrier,
                     x = after_stat(prop),
                     group = 1)) +
  geom_bar(show.legend = FALSE)



# q6, stacked bar charts
ggplot(data = top3_carriers,
       mapping = aes(y = origin,
                     fill = carrier)) +
  geom_bar() +
  scale_fill_colorblind()


# q6, 100% stacked bar charts
ggplot(data = top3_carriers,
       mapping = aes(y = origin,
                     fill = carrier)) +
  geom_bar(position = "fill") +
  labs(x = "Proportion") +
  scale_fill_tableau() # label x-axis title

# q6, clustered bar charts
ggplot(data = top3_carriers,
       mapping = aes(y = origin,
                     fill = carrier)) +
  geom_bar(position = "dodge") +
  labs(x = "Proportion") +
  scale_fill_tableau() # label x-axis title

# q6, facetted bar charts
ggplot(data = top3_carriers,
       mapping = aes(y = carrier,
                     fill = carrier)) +
  geom_bar(show.legend = FALSE) +
  facet_wrap(~ origin)

# q7
ggplot(data = top3_n,
       mapping = aes(x = __BLANK_1__,
                     y = __BLANK_2__,
                     __BLANK_3__)) +
  geom___BLANK_4__(show.legend = FALSE)


# q8
ggplot(data = top3_n,
       mapping = aes(x = __BLANK_1__,
                     y = __BLANK_2__)) +
  geom___BLANK_3__() +
  labs(y = "Carrier")   # label y-axis title


# q9
carrier_per_origin <- flights |> 
  __BLANK__ |> 
  arrange(origin, -n)





# blank -------------------------------------------------------------------


