library(tidyverse)
library(nycflights13)

flights <- flights


# select() ----------------------------------------------------------------

flights_time_vars <- flights |> 
  select(year, month, day)

flights_2013 <- flights |> 
  select(-year)

flights_2013_distinct <- flights |> 
  distinct(year) # only 2013; tibble is data.frame


# rename() ----------------------------------------------------------------



flights_plane_id <- flights |> 
  rename(tail_num = tailnum)




# cw6 - part 1 ------------------------------------------------------------

library(tidyverse)
library(nycflights13)
flights <- flights

?flights


# cw6 -pt1 -q1 -------------------------------------------------------------
# Find all flights that had an arrival delay 
  # of two or more hours.

# q1_1 <- flights |> filter(LOGICAL_CONDITION)

q1_1_arr_delay_120 <- flights |> 
  filter(arr_delay >= 120)


# Find all flights that flew to Houston (IAH or HOU).
# q1_1_dest <- flights |> filter(LOGICAL_CONDITION)
  # dest: destination
q1_1_dest <- flights |> 
  filter(dest == "IAH" | dest == "HOU")

# verify it
q1_1_dest |> 
  distinct(dest)

# below causes error:
# q1_1_dest <- flights |> 
#   filter(dest == "IAH" | "HOU")


# Find all flights that departed in summer 
# (July, August, and September).

# q1_1_summer <- flights |> filter(LOGICAL_CONDITION)

# below is wrong approach
q1_1_summer_and <- flights |> 
  filter(month == 7 & month == 8 & month == 9)

# below is right approach
q1_1_summer_or <- flights |> 
  filter(month == 7 | month == 8 | month == 9)




# Find all flights that arrived 
  # more than two hours late, 
  # but did not leave late.

# q1_1_late <- flights |> filter(LOGICAL_CONDITION)
#  ... arrived more than two hours late ...
#  ... but did not leave late.

q1_1_late <- flights |> 
  filter(arr_delay > 120 & dep_delay <= 0)

# below is wrong:
q1_1_late_OR <- flights |> 
  filter(arr_delay > 120 | dep_delay <= 0)



# cw6 -pt1 -q2 -------------------------------------------------------------
# How many flights have a missing dep_time?

# V1 <- c(1, NA, 3)
# V1
# is.na(V1)

# dealing with NA values in the `dep_time` variable,
# counting how many such obs. are

q2_NA <- flights |> 
  filter( is.na(dep_time) )

nrow(q2_NA)



# cw6 -pt1 -q3 -------------------------------------------------------------
# Sort flights to find the most delayed flights.


q3_delay <- flights |> 
  arrange( -dep_delay )

q3_delay <- flights |> 
  arrange( desc(dep_delay) )

# wrong:
# q3_delay <- flights |> 
  # arrange(dep_delay)



# cw6 -pt1 -q4 -------------------------------------------------------------
# Was there a flight on every day of 2013?

# flights |> 
  # distinct(year)  # only 2013

q1_everyday <- flights |> 
  select(year, month, day) |> 
  distinct()

nrow(q1_everyday) # 365

q1_everyday_ <- flights |> 
  distinct(year, month, day)






# cw6 - part 2 ------------------------------------------------------------
library(tidyverse)
nyc_payroll_new <- read_csv("https://bcdanl.github.io/data/nyc_payroll_2024.csv")

# cw6 -pt2 -q1 -------------------------------------------------------------
# Create a new data.frame, 
# df 
# that keeps only the following 
# five variables—
# Fiscal_Year, Agency_Name, 
# First_Name, Last_Name, and 
# Base_Salary—
# from the data.frame nyc_payroll_new.


df <- nyc_payroll_new |> 
  select(Fiscal_Year, Agency_Name, 
         First_Name, Last_Name,
         Base_Salary)



# cw6 -pt2 -q2 -------------------------------------------------------------
# Given the data.frame df 
# with a variable named Agency_Name, 
# how would you rename it to Agency?
  

# df |> 
  # rename(NEW = CURRENT)
df <- df |> 
  rename(Agency = Agency_Name)

  
# cw6 -pt2 -q3 -------------------------------------------------------------
# How would you remove 
# the Fiscal_Year variable using select()?
  
df_q3 <- df |> 
  select(-Fiscal_Year)
  

