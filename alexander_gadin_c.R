# Alexander Gadin
# 1/15/2025

#Problem 2
library(uft8) # in case any data needs to be parsed from utf8 to a usable format
library(Matrix) # manipulating matrices is really importnat for datasceince. This package allows the manipulation of different types of matrices.

###Problem 3
## Running the second line of code prints the error Error: `path` does not exist: ‘~/NewFolder/Lab1Data.xlsx’
## I fixed the error by updating the path to and importing my data set. I changed the line to: Lab1Data <- read_excel("~/Prob_Stats_code/Lab1Data.xlsx")
## My new line of code is: Lab1Data <- read_excel("~/Prob_Stats_code/Lab1Data.xlsx")

## Record what you saw in the RStudio window in your R script.
# 
# > library(readxl)
# > 
# > # read data from an excel file
# > Lab1Data <- read_excel("~/Prob_Stats_code/Lab1Data.xlsx")
# 
# It is so silly that they do not have a block comment option; even languages like MATLAB have a way to make block comments

## The variable that was declared in the third line was january
## Environment found and used to clear environment
## Running the fourth line of code yielded this error: Error: object 'january' not found. This is because I just cleared the environment variables in the previous step.
## Running all the lines of code again:  [1] 20.01 19.09 19.27 21.30 24.14 19.69 17.22 18.55 20.52 19.37 is printed in the console. This is different than before because january was actually defined in my variables this time before trying to print it

## Every single time the run button is pressed with nothing highlighted a single line of code is ran. When multiple lines of code are highlighted multiple lines are ran
