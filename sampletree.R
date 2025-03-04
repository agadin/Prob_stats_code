install.packages("ggplot2")  # Required for visualization
library(ggplot2)

sensitivity <- 400 / 408 
specificity <- 900 / 903 
false_pos <- 1 - specificity 
false_neg <- 1 - sensitivity 

positive_predictive_value <- function(prevalence) {
  (prevalence * sensitivity) / (prevalence * sensitivity + (1 - prevalence) * false_pos)
}

negative_predictive_value <- function(prevalence) {
  ((1 - prevalence) * specificity) / ((1 - prevalence) * specificity + prevalence * false_neg)
}

curve(positive_predictive_value, from = 0, to = 1, 
      col = "blue", lwd = 2, 
      xlab = "Prevalence", 
      ylab = "Predictive Value", 
      ylim = c(0, 1))
curve(negative_predictive_value, from = 0, to = 1, 
      col = "red", lwd = 2, 
      add = TRUE)

title("Positive and Negative Predictive Values vs. Prevalence")

intersection_root <- uniroot(function(p) positive_predictive_value(p) - negative_predictive_value(p), 
                             interval = c(0, 1)) 

intersection <- list(x = intersection_root$root, y = positive_predictive_value(intersection_root$root))


legend("center", legend = c("PVP", "PVN"), 
       col = c("blue", "red"), lwd = 2, bty = "n")
print(intersection)
