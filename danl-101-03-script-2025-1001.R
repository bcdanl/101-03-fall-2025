# install.packages("nycflights13")  # Install once
library(nycflights13)
library(tidyverse)

flights <- nycflights13::flights

month_vec <- flights$month
class(month_vec)

flights$month == 1  # A logical test returns TRUE or FALSE
class(flights$month == 12) 


jan <- flights |> 
  filter(month == 1)

dec <- flights |> 
  filter(month == 12)

jan1 <- flights |> 
  filter(month == 1, day == 1)

dec25 <- flights |> 
  filter(month == 12, day == 25)

nrow(dec25)




jan1 <- flights |> 
  filter(month == 1, day == 1)


jan_or_25 <- flights |> 
  filter(month == 1 | day == 25)


# missing values ----------------------------------------------------------


NA > 5

10 == NA


NA + 10

NA / 2

(1 + NA + 3) / 3

mean( c(1, NA, 3) )

sd( c(1, NA, 3) )

v1 <- NA
v2 <- NA
v1 == v2


num_missing <- NA
is.na(num_missing)  # is num_missing NA?

text_missing <- "missing"
is.na(text_missing) # is text_missing NA?

V1 <- c(1, NA, 3)
is.na(V1)  # is V1 NA?

!is.na(V1)  # is V1 not NA?

!TRUE 
!FALSE

df <- data.frame(
  v1 = c(1, NA, 3),
  v2 = c(1, 2, 3)
)

df |> 
  filter( is.na(v1) )

df |> 
  filter( !is.na(v1) )


# arrange (sorting) -------------------------------------------------------


dep_delay_asc <- flights |> 
  arrange(dep_delay)

dep_delay_sched_asc <- flights |> 
  arrange(dep_delay, sched_dep_time)

dep_delay_desc <- flights |> 
  arrange( desc(dep_delay) )

# Equivalent shortcut 
# for numeric variables
flights |> 
  arrange(-dep_delay)


# distinct() --------------------------------------------------------------


df <- data.frame(
  country = c("USA", "Korea", "USA"),
  city = c("D.C.", "Seoul", "D.C."),
  subregion = c("Georgetown", 
                "Gangnam", 
                "Georgetown") 
)


df

df |> 
  distinct()

# Remove duplicate observations 
# from the flights data.frame
flights_uniq <- flights |> 
  distinct()



origin_airport <- flights |> 
  distinct(origin)


# Find all unique 
#  origin-destination pairs

origin_dest <- flights |> 
  distinct(origin, dest) |> 
  arrange(origin, dest)

# select() ----------------------------------------------------------------


flights |> 
  select(year, month, day)

