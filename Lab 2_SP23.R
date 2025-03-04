#################################################
# EnStats E60 328 #
# Lab 2: Programming in R
#################################################

##############################
## Setting Up
##############################
# importing package and reading data from excel file
library(readxl)
Lab2Example <- read_excel("your-path-here/Lab2Example.xlsx")

##############################
## Organizing Imported Data
##############################
# Using the $ symbol chooses which part of the multi-dimensional variable
# you want to access. For example, xdata becomes just the x column from the
# Lab2Example excel data
xdata <- Lab2Example$x
ydata <- Lab2Example$y
# Simply putting parenthesis around a variable prints it to the console.
# xdata and ydata will appear below in the console.
(xdata)
(ydata)

##############################
## Plotting
##############################
# As you will learn later, histograms and qqplots are important for
# visually testing normality of a dataset. the hist() and qqnorm(), qqline()
# functions display data in these forms easily for analysis.
hist(xdata)
qqnorm(xdata)
qqline(xdata)

# The plot function will create a scatterplot of the (x,y) data given.
# The two examples below also show the difference between <- and = in R.
# In R, the <- operator can be used anywhere, creating a variable in the 
# environment. However, the = operator is only allowed at top level and
# can serve different purposes depending on where it is used.

# Therefore, it is convention to use <- in R.
# Run the two lines individually. Watch how the first time, only the plot
# is created
# However, the second time, a new variable, y, appears in the environment.
plot(xdata, y = c(1, 3, 4, 2, 5, 6, 3, 7, 2, 4, 1, 2))
plot(xdata, y <- c(1, 3, 4, 2, 5, 6, 3, 7, 2, 4, 1, 2))


##############################
## Using Variables & Functions
##############################
# asigning variables using the R conventional <- operator.
m <- 10
n <- 12

# Using the declared variables, shown in the environment, to perform
# simple arithmetic operations. You can only use variables that have been
# previously declared. Observe how running the line for mult2 returns an
# error.
multiply <- m * n
mult2 <- p * m
divide <- m / n
add <- m + n
subtract <- m - n

# Multiple values/variables can be used to create an array using the c()
# function. Observe how these two lines create identical arrays, one using 
# declared variables and one using each variables direct value.
all <- c(multiply, divide, add, subtract)
all2 <- c(120, 1.2, 22, -2)

# There are functions provided by R, but you can also make your own custom
# function for series of tasks that you would like to use multiple times
# and together. Functions can be defined as follows.
# You cannot execute a function without declaring it first. Notice how the
# function appears under "functions" in the environment too.
operations <- function(var1, var2){
  multiplying <- var1 * var2
  dividing <- var1 / var2
  adding <- var1 + var2
  subtracting <- var1 - var2
  return(c(multiplying, dividing, adding, subtracting))
}

# Once you have declared the function definition (what arguments it uses,
# what it does, what it returns), you can call the function.
# Observe below that you can either assign to another variable (ie. 
# all_operations), or directly print the result by wrapping it in ().
all_operations <- operations(10, 12)
(operations(10, 12)) # NOTE: this does not save the result for later use.

# If you want to print to the console and save the result for later, assign
# the function call to a variable and surround the whole line with ().
(all_operations2 <- operations(2, 5))
