library(readxl)

file_path<- "/Users/alexandergadin/Prob_stats_code/Assignment_5_E60_328_Spring_2025_Thermal.xlsx"


thermal_data <-read_excel(file_path)

thermal <- thermal_data$Thermal

success <- ifelse(thermal <= 1, 1, 0)
n <- length(success) #sampsize from prev
p_hat<- mean(success)
se_p <- sqrt((p_hat *(1 - p_hat)) /n)

confidence_level<- 0.95
z_critical <- qnorm((1 + confidence_level) / 2) #tail
margin_of_error <- z_critical *se_p

lower_bound <-p_hat - margin_of_error
upper_bound <- p_hat + margin_of_error



print(round(lower_bound, 4))
print(round(upper_bound, 4))
