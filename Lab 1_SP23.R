#################################################
# EnStats E60 328 #
# Lab 1: RStudio Scavenger Hunt
#################################################

##############################
## Setting Up
##############################
# Some functions require specific libraries. 
# Import necessary libraries for your code using the library() call.
library(readxl)

# read data from an excel file
Lab1Data <- read_excel("~/Prob_Stats_code/Lab1Data.xlsx")

##############################
## Organizing Data
##############################
# assign the variable "january" as data from excel in the january group
# NOTE: drop=TRUE mean it drops values that are NOT "before"
january <- subset(Lab1Data, group == 'january', weight, drop = TRUE)
(january)
august <- subset(Lab1Data, group == 'august', weight, drop = TRUE)
(august)

##############################
## Defining Helpful Functions
##############################
# we can create our own custom functions
plotting <- function(xdata, ydata){
  plot(xdata,ydata)
  hist(xdata)
  qqnorm(ydata)
  qqline(ydata)
  result <- xdata[1] - ydata[1]
  return(result)
  # returns the difference between the first two data points
}

##############################
## Using Functions
##############################
result <- plotting(january, august)
result2 < plotting(august, january)
result3 <- fun_plots(january, january)
