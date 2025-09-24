
a <- c(1, 2, 3, 4, 5)
b <- c(5, 4, 3, 2, 1)


a + 5

1 + 5
2 + 5
3 + 5
4 + 5
5 + 5


a + 5
a - 5
a * 5
a / 5

a + b
a - b
a * b
a / b

sqrt(a)




# classwork 4 -------------------------------------------------------------

# q1
# state.name
# length(state.name)

US_states <- state.name

# R is case-senstive.
us_states <- state.name


# q2
# Write an R code to create a numeric vector 
# named numbers containing the integers from 10 to 50.

# numbers <- c(10,11,12, ....)

# colon operator is useful here:
numbers <- 10:50 # integer vector
numbers
numbers <- as.numeric(numbers) # numeric vector


# q3

temp_F <- c(35, 88, 42, 84, 81, 30)


temp_C <- (5/9) * (temp_F - 32)

temp_C

temp_C_ <- 5/9 * (temp_F - 32)

temp_C_


# q4
# Write an R code to assign the string 
# “Hello, World!” to a variable named greeting 
# and display its value on the Console.


# “” ""
greeting <- "Hello, World!"
greeting




# q5
char_vec <- c("1", "2", "3", "4")

num_vec <- as.numeric(char_vec)
class(num_vec)

# q6
first_names <- c("John", "Jane")
last_names <- c("Doe", "Smith")

library(tidyverse)
str_c(first_names, last_names)

full_names <- str_c(first_names, last_names,
                    sep = ' ')
full_names


# desc stat - central tendency --------------------------------------------

x <- c(60, 70, 80, 90, 100)
sum(x)

sum(x) / length(x)

mean(x)

x <- c(60, 70, 80, 90, 100)
median(x)



# desc stat - dispersion --------------------------------------------------

x <- c(60, 70, 80, 90, 100)
max(x)
min(x)
range <- max(x) - min(x)
range

var(x)
sd(x)



quantile(x, 0)    # the minimum

quantile(x, 0.25) # the 1st quartile (Q1)

quantile(x, 0.5)  # the 2nd quartile (Q2, median)

quantile(x, 0.75) # the 3rd quartile (Q3)

quantile(x, 1)    # the maximum


y <- c(60,70,80,90,100)

yy <- c(60,70,80,90,1000)

mean(y)
median(y)

mean(yy)
median(yy)



# Accessing a Subset of a vector ------------------------------------------


my_vector <- c(10, 20, 30, 40, 50, 60)

my_vector[2]
my_vector[4]
my_vector[6]




