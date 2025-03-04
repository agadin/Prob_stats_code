library(readxl)

file_path <- "/Users/alexandergadin/Prob_stats_code/Assignment_5_E60_328_Spring_2025_Thermal.xlsx"
df <- read_excel(file_path)

thermal_values <- na.omit(df$Thermal)

sigma <- 0.3

n <- length(thermal_values)
mean_thermal <- mean(thermal_values)

confidence_level <- 0.97
z_critical <- qnorm((1 + confidence_level)/ 2) 

margin_of_error<- z_critical * (sigma / sqrt(n))

lower_bound <- mean_thermal -margin_of_error
upper_bound <- mean_thermal + margin_of_error

print(lower_bound)
print(upper_bound)

#Problem 4
mu_0<- 1
z_score<- (mean_thermal - mu_0) / (sigma / sqrt(n))
p_value <-2 * (1 - pnorm(abs(z_score)))

print(p_value)

#problem 5
s <- sd(thermal_values)
alpha <- 1 - confidence_level
t_critical <- qt(1 - alpha/2, df = n-1)

#Problem 6
margin_of_error<- t_critical * (s / sqrt(n)) #marg error
lower_bound <- mean_thermal -margin_of_error
upper_bound <- mean_thermal+ margin_of_error
print('Problem 6')
print(lower_bound)
print(upper_bound)

# Problem 8
sigma_0 <- 0.3

chi_square_stat <- (n - 1) * (s^2) / (sigma_0^2)

df_chi <- n - 1

p_value <- 2 * min(pchisq(chi_square_stat, df_chi), 1 - pchisq(chi_square_stat, df_chi))

print(chi_square_stat)
print(p_value)