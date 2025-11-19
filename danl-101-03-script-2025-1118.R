
# hw3 ---------------------------------------------------------------------



library(tidyverse)
library(skimr)
library(ggthemes)

# q11 ---------------------------------------------------------------------


oj <- read_csv("https://bcdanl.github.io/data/dominick_oj_na.csv")

oj |> 
  count(brand)

oj_tr <- oj |> 
  filter(brand == "tropicana")

oj_mm <- oj |> 
  filter(brand == "minute.maid")

oj_do <- oj |> 
  filter(brand == "dominicks")

oj_tr_sum <- skim(oj_tr)
oj_mm_sum <- skim(oj_mm)
oj_do_sum <- skim(oj_do)



# q12 ---------------------------------------------------------------------
oj_no_NA <- oj |> 
  filter(!is.na(price) & !is.na(sales))

skim(oj_no_NA)



# q13 ---------------------------------------------------------------------

ggplot(data = oj, 
       mapping = aes(x = price,
                     fill = brand)) +
  geom_histogram(show.legend = FALSE,  # `show.legend = FALSE` turns off legend
                 bins = 40) +
  facet_wrap(~ brand, 
             ncol = 1) +
  scale_fill_colorblind()



# q15 ---------------------------------------------------------------------


ggplot(data = oj, 
       mapping = aes(x = log10(sales),
                     y = log10(price),
                     color = brand,
                     fill = brand)) +
         geom_point(alpha = .1) +
         geom_smooth(method = "lm")
       


# q17 ---------------------------------------------------------------------

ggplot(data = oj, 
       mapping = aes(x = log10(sales),
                     y = log10(price),
                     color = brand,
                     fill = brand)) +
         geom_point(alpha = .1) +
         geom_smooth(method = "lm") +
         facet_wrap(~ ad_status)

       

# q19 ---------------------------------------------------------------------

mlb_bat <- read_csv("https://bcdanl.github.io/data/MLB_batting.csv")

ggplot(data = mlb_bat, 
       mapping = aes(x = year, 
                     y = percentage, 
                     color = hit_type,
                     fill = hit_type)) +
  geom_point() + 
  geom_line() +
  geom_smooth() +
  labs(title = "Hits by Type in Major League Baseball",
       x = "Major League Baseball Season",
       y = "Percentage",
       fill = "Hit",
       color = "Hit")  # labs() allows for 
# labeling x, y, color, fill, title, etc.
       




# classwork 14 ------------------------------------------------------------

library(tidyverse)
library(ggthemes)
library(nycflights13)

top3_n <- flights |> 
  count(carrier) |> 
  arrange( desc(n) ) |> 
  head(3)  # returns the first 3 observations in the given data.frame


# q7
ggplot(data = top3_n,
       mapping = aes(x = n,
                     y = carrier,
                     fill = carrier)) +
  geom_col(show.legend = FALSE) +
  scale_fill_tableau()


# q8
ggplot(data = top3_n,
       mapping = aes(x = n,
                     y = fct_reorder(carrier, n))) +
  geom_col() +
  labs(y = "Carrier")   # label y-axis title


# q9
carrier_per_origin <- flights |> 
  count(origin, carrier) |> 
  arrange(origin, -n)




# homework 4 --------------------------------------------------------------

library(tidyverse)
library(skimr)
library(ggthemes)
library(gapminder)

titanic <- read_csv("https://bcdanl.github.io/data/titanic_cleaned.csv")


# q11 ---------------------------------------------------------------------

titanic_class_survival <- titanic |> 
  count(class, survived)




# q12 ---------------------------------------------------------------------


ggplot(data = titanic,
       mapping = aes(x = gender,
                     y = age,
                     fill = gender)) +
  geom_boxplot(show.legend = F) +
  facet_wrap(~class) +
  scale_fill_tableau()



# q14 ---------------------------------------------------------------------

ggplot(data = titanic,
       mapping = aes(y = class,
                     fill = survived)) +
  geom_bar() +
  facet_wrap(~gender) +
  scale_fill_tableau()



# q15 ---------------------------------------------------------------------

ggplot(data = titanic,
       mapping = aes(y = class,
                     fill = survived)) +
  geom_bar(position = "fill") +
  facet_wrap(~gender) +
  labs(x = "Proportion") +
  scale_fill_tableau()


# q16 ---------------------------------------------------------------------

ggplot(data = titanic,
       mapping = aes(y = class,
                     fill = survived)) +
  geom_bar(position = "dodge") +
  facet_wrap(~gender) +
  scale_fill_tableau()




# q18 ---------------------------------------------------------------------

nyc_dogs <- read_csv("https://bcdanl.github.io/data/nyc_dogs_cleaned.csv")

nyc_dogs_breeds <- nyc_dogs |> 
  count(breed) |> 
  filter(!is.na(breed)) |> 
  filter(n >= 2000) |> 
  arrange(-n)




# q19 ---------------------------------------------------------------------

ggplot(data = nyc_dogs_breeds,
       mapping = aes(x = n,
                     breed)) +
  geom_col()


# q20 ---------------------------------------------------------------------

ggplot(data = nyc_dogs_breeds,
       mapping = aes(x = n,
                     y = fct_reorder(breed, n))) +
  geom_col() +
  labs(y = "Breed")


# blank -------------------------------------------------------------------



