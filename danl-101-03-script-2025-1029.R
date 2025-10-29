library(tidyverse)

x <- data.frame(
  key = c(1, 2, 3),
  val_x = c('x1', 'x2', 'x3')
)

y <- data.frame(
  key = c(1, 2, 4),
  val_y = c('y1', 'y2', 'y3')
)

df_joined <- x |> 
  left_join(y)



# Classwork 9
# Question 1
# Part A
# Write an R code to create a data frame named df_joined 
# that combines the three datasets — df_survey, df_platform, 
# and df_card — using the left_join() function.

df_platform <- 
  read_csv("https://bcdanl.github.io/data/platform_reference.csv")

df_card <- 
  read_csv("https://bcdanl.github.io/data/card_suit_rules.csv")

df_survey <- 
  read_csv("https://bcdanl.github.io/data/danl-101-survey-social-media-fall-2025.csv")

# Answer

df_joined <- df_survey |> 
  left_join(df_platform) |> 
  left_join(df_card)




# count() -----------------------------------------------------------------


library(nycflights13)
flights <- flights

flights |> count(origin)



# cw9-q1 - part B-c  ----------------------------------------------------------------

df_survey |> count(platform)

df_survey |> 
  count(platform) |> 
  arrange(-n)




# cw9-q1 - part D  ----------------------------------------------------------------
library(skimr)

# Instagram

df_insta <- df_survey |> 
  filter(platform == "Instagram")

skim(df_insta)

sum_insta <- skim(df_insta$daily_time_min)



# TikTok
df_tiktok <- df_survey |> 
  filter(platform == "TikTok")

skim(df_tiktok)

sum_tiktok <- skim(df_tiktok$daily_time_min)





