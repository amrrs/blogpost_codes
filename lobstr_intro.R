
#install.packages("devtools")
devtools::install_github("r-lib/lobstr")

#loading the library

library(lobstr)


#creating a simple vector with 3 double objects

simple_vector <- c(2.0,3.0,4.0)

# creating a new list using the simple_vector twice

double_vector <- list(simple_vector,simple_vector)

# now, a new list that's a combination of double_vector (list) and simple_vector(vector)

triple_vector <- list(double_vector,simple_vector)

#checking the memory references

ref(simple_vector)

ref(double_vector)

ref(triple_vector)



#ast 

#simple addition

ast(1 + 2)

#simple addition with result assignment

ast(x <- 1 + 2)

#operator precedemnce

ast(y <- 2 + 3 * 5 / 9 ^ 2)
