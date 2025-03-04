# Problem 9
library(readxl)

file_path<- "/Users/alexandergadin/Prob_stats_code/Assignment_5_E60_328_Spring_2025_Thermal.xlsx"


thermal_data <- read_excel(file_path)
thermal <- thermal_data$Thermal

n <- length(thermal)        
df <- n - 1                 
sigma0_sq <- 0.3^2          
sigma1_sq <- 0.45^2         
alpha <- 0.04              

crit_val <- qchisq(1 - alpha, df)

k <- sigma1_sq / sigma0_sq  
power <- 1 - pchisq(crit_val / k, df)


x_max <-max(crit_val, crit_val / k) * 3
x_vals <- seq(0, x_max, length.out = 500)

null_density <- dchisq(x_vals, df)           
alt_density<- (1 / k) * dchisq(x_vals / k, df) 

plot(x_vals, null_density, type = "l", col = "blue", lwd = 2,
     xlab = "Test Statistic", ylab = "Density",
     main = "One-Sided Var Test")
lines(x_vals, alt_density, col = "red", lwd = 2)
abline(v = crit_val, col = "darkgreen", lty = 2, lwd = 2) # Lab 6

legend("topright",
       legend = c(expression(paste("Null: ", sigma^2, "=", 0.3^2)),
                  expression(paste("Alt: ", sigma^2, "=", 0.45^2)),
                  "Critical Value"),
       col = c("blue", "red", "darkgreen"), lwd = 2, lty = c(1, 1, 2))


polygon_x <- seq(crit_val, x_max, length.out = 200) #stack overflow hel;ped
polygon_y <- (1 / k) * dchisq(polygon_x / k, df)
polygon(c(crit_val, polygon_x, x_max),
        c(0, polygon_y, 0),
        col = rgb(1, 0, 0, 0.2), border = NA) #office hours do not change

text(crit_val + 5, max(null_density) / 2, paste("Critical Value =", round(crit_val, 2)), col = "darkgreen", pos = 4)
text(crit_val + 15, max(null_density) / 4, paste("Alpha =", round(alpha, 2)), col = "blue", pos = 4)
text(crit_val + 25, max(alt_density) / 2, paste("Power =", round(power, 2)), col = "red", pos = 4)
# office hours do not change