#################################################
# EnStats E60 328 #
# Lab 3: Introduction to R #
#################################################

##############################
# Start by running through though these examples #
##############################

##############################
########## Expressions and Objects ##########
##############################

## Assigning Objects
## use the "<-" to assign a value to a variable
## do NOT use "="

x <- 1:10
x # x is now a vector of integers from 1 to 10
a <- "I love stats"
a # a is no a character string

##############################
## Object Values and Information
##############################

matrix_example <- matrix(1:6, 2, 3) # this will generate a 2 row and 3 column matrix of integers from 1 to 6
print(matrix_example) # provides more of a summary
show(matrix_example) # provides the prettiest way to show/display
matrix_example # also dispays the matrix

class(matrix_example) # format of the object (matrix_example in this case)
mode(matrix_example) # data type

# Parentheses around an assignment causes the object to print
y <- seq(1, 10, by=1)
print(y)

print(y <- seq(1, 10, by=1))
(y <- seq(1, 10, by=1))

##############################
########## Numeric Data Type ##########
##############################

##############################
## Numeric Values
##############################

(x <- 3.14) # remember parenthesis cause the value to be printed
# Note: we used x earlier in the code.  R uses the most recent value of a given variable
# Therefore, I encourage you to make unique variable names
(x <- pi) # R has some built in values, just like it has some built in functions
print(pi, digits=10) # digits is an additional argument that dictates the number of digits to be printed

(x <- 1 / 0) # if a solutions is "infinity," R will print "Inf"
1 / x
(x <- sqrt(-1)) # an example of returning NaN (not a number)
(x+1) # also produces NaN bc a piece of the expression was NaN

##############################
## Arithmetic Operators
##############################

x <- 10
y <- 3

x + y
x * y
x^y
x/3
x %/% y # returns the integer portion of the quotient
x %% y # returns the remainder of the quotient

## Functions

x <- 10
mode(x)

(x <- as.integer(10)) # as.integer forces the variable to be a
mode(x)

# putting quotes around something makes it a string
(x <- as.numeric("2011")) # manually converts strings to numeric values
mode(x)

(y<-as.numeric("apple")) # returns missing "NA" (not NaN)

exp(1) # "exp" means e^( )
# e is not the built in command for "e"
log(10) # the default for "log" is the natural log, "ln"
log(10, base=10)

?pnorm # putting a "?" before a build in question pulls up the help documentation
# Note: we will be using pnorm to calculate probabilities under a normal distribution
pnorm(q = 1.96, sd = 1, mean = 0) # the inputs are not not in the defined order, but it is OK because the specific arguments are labeled
pnorm(1.96, 0, 1) # the inputs are in the Correct order, so there is no need for the specific arguments
pnorm(1.96) # when certain arguments are not included, the function assumes the defaults

##############################
########## Numeric Vectors ##########
##############################

##############################
## Construction
##############################

(x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)) # creates a vector with the inserted values
(x <- numeric(10)) # creates a 10 object of zeroes
(x <- rep(1, 10)) # creates a vector of 10 ones - rep(value, number of times)
(x <- seq(1, 10)) # creates a vector of integers from the lower value to the upper value - seq(lower value, upper value)
(x <- seq(1, 10, by=0.5)) # creates a vector from a lower value to an upper value by a certain step weight
(x <- seq(2, length.out=11)) # seq(starting value, length of resulting vector), you can also have a by= statement
(x <- seq(1, 10, length.out=6)) # seq(start value, end value, length), this outputs a vector with equally spaced elements

##############################
## Attributes
##############################

x <- 1:3
length(x) # length of the vector
names(x) # indicates if there are any "name" labels
names(x) <- c("a", "b", "c") # assigns a label to the values
x # if there are names, they will be printed with the elements
names(x)
(7*x) # names are not affected by vector operations

##############################
## Accessing Elements
##############################

(x <- c(0.1, 0.2, 0.3))
names(x) <- c("a", "b", "c")
x[3] # the brackets allow you to access the element of interest
x[c(3, 1)] # returns element 3 then element 1 as a vector
x["c"] # you can also use names to call specific elements
x[c("c", "a")]
x[c(3, 1)] <- c(5, 10) # overwrites the values of the specified elements
x
x[-2] # negative signs exclude elements from being printed; drops the second element from the output (its still in the vector x)
x


