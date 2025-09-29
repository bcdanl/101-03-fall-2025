

my_vector <- c(10, 20, 30, 40, 50, 60)

my_vector[2]
my_vector[4]
my_vector[6]

my_vector[ 2:5 ]
my_vector[ c(2,3,4) ]


is_greater_than_10 <- my_vector > 10
is_greater_than_10

my_vector[ is_greater_than_10 ]




# classwork 5 -------------------------------------------------------------

# q1
x <- 1:25

x - mean(x)

(x - mean(x))^2

sum( (x - mean(x))^2 )


var_x <- sum( (x - mean(x))^2 ) / ( length(x) - 1)
sd_x <- sqrt(var_x)


var_x == var(x)
sd_x == sd(x)

sd_x
sd(x)


# q2
temp <- c(22, 28, 31, 25, 29)

range_temp <- max(temp) - min(temp)

# q3
my_vec <- c(-10, -20, 30, 10, 50, 40, -100)

# Write an R code to filter 
# only the positive values in my_vec.

is_pos <- my_vec > 0
is_pos
my_vec_pos <- my_vec[ is_pos ]
my_vec_pos
  

beers <- c("BUD LIGHT", "BUSCH LIGHT", "COORS LIGHT", 
           "GENESEE LIGHT", "MILLER LITE", "NATURAL LIGHT")
beers[c(2, 4, 6)]



# q4
ages <- c(15, 22, 18, 24, 30)

logical_vec <- ages >= 20
logical_vec




# '/Users/bchoe/Documents/custdata_rev.csv'


library(tidyverse)
# Read the CSV file from the data subfolder

# getwd()
# custdata <- read_csv("data/custdata_rev.csv")
# view(custdata)  # Opens a `data.frame` in a spreadsheet-like viewer

# using absolute pathname of custdata_rev.csv
# custdata_abs <- read_csv("/cloud/project/data/custdata_rev.csv")


# Read the CSV file directly from the web (GitHub repo)
custdata_web <- read_csv(
  'https://bcdanl.github.io/data/custdata_rev.csv')

custdata <- read_csv(
  'https://bcdanl.github.io/data/custdata_rev.csv')


class(custdata)
custdata_age <- custdata$age

dim(custdata)
nrow(custdata)
ncol(custdata)



summary(custdata)



# Install once
# install.packages("skimr")  
library(skimr)
skim(custdata)


custdata_young <- filter(custdata, age < 25 )
custdata_young_pipe <- filter(age < 25 )



