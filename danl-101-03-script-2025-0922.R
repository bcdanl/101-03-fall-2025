
# this is comment on the line below
# load tidyverse
library(tidyverse)  # load tidyverse

a <- 1

a <- 1



# section 1 ---------------------------------------------------------------





# section 2 ---------------------------------------------------------------

library(tidyverse)



# r basics ----------------------------------------------------------------


a <- 7    # The most popular assignment operator in R is `<-`.
a

aa <- 7
aaa <- 7


x <- 2
x < - 3

x <- 3



x <- 2
y <- x + 12




# data container ----------------------------------------------------------

c(1, 2, 3)
c("red", "blue", "green")



# data type ---------------------------------------------------------------


orig_number <- 4.39898498
class(orig_number)

mod_number <- as.integer(orig_number)
class(mod_number) # what does L denote?

chr_4L <- "4L"
class(chr_4L)

# Logical values (TRUE/FALSE) 
# can convert to numbers:
# TRUE converts to 1; 
# FALSE does to 0.
as.numeric(TRUE)
as.numeric(FALSE)

myname <- "my_name"
class(myname) # returns the data **type** of an object.

myname_s <- 'my_name'

qq <- "'here I have quotes'"
# qq <- ''here I have quotes''



''
""
""

()


# data type - numbers -----------------------------------------------------

favorite.integer <- as.integer(2)
class(favorite.integer)

class(2)

favorite.numeric <- as.numeric(8.8)
class(favorite.numeric)



# logical -----------------------------------------------------------------

class(TRUE)
class(FALSE)

favorite.numeric == 8.8
favorite.numeric == 9.9

class(favorite.numeric == 8.8)



# vector ------------------------------------------------------------------

a <- 1:10
class(a)

b <- c("3", 4, 5)   # mixing numbers and text
class(b)
bb <- c(3, "4", 5)   # mixing numbers and text
class(bb)


a <- 1:10   # create a sequence using the colon operator
b <- c("3", 4, 5)   # mixing numbers and text

beers <- c("BUD LIGHT", "BUSCH LIGHT", "COORS LIGHT", 
           "MILLER LITE", "NATURAL LIGHT")

class(beers)



# factor -----------------------------------------------------------------

beers_fct <- as.factor(beers)
levels(beers_fct)
nlevels(beers_fct)


beers_more <- c("BUD LIGHT", "BUSCH LIGHT", "COORS LIGHT", 
                "MILLER LITE", "NATURAL LIGHT",
                "BUD LIGHT", "BUD LIGHT", "BUD LIGHT")
beers_more_fct <- as.factor(beers_more)
levels(beers_more_fct)
nlevels(beers_more_fct)




# workflow + --------------------------------------------------------------

x <- "hello"

library(readr)
z <- "new data"
b <- 3




# functions ---------------------------------------------------------------


# The function `str_c()`, provided by `tidyverse`, concatenates characters.
str_c("Data", "Analytics")

str_c("Data", "Analytics", sep = "!")
str_c("Data", "Analytics", sep = "") # str_c("Data", "Analytics")


# algebra -----------------------------------------------------------------

5 + 3
5 - 3
5 * 3
5 / 3
5^3

( 3 + 4 )^2
3 + 4^2
3 + 2 * 4^2
3 + 2 * 4 + 2
(3 + 2) * (4 + 2)

5 * abs(-3)
sqrt(17) / 2
exp(3)
log(3)
log(exp(3))
exp(log(3))







