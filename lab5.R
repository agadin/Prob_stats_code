drug_concentration <- c(0, 2, 4, 6, 8, 10, 12)
insulin_concentration <- c(0.20, 0.27, 0.30, 0.34, 0.36, 0.42, 0.46)

plot(drug_concentration, insulin_concentration, 
     main="Drug Concentration vs. Insulin Conc", 
     xlab="Drug Conc(µM)", 
     ylab="Insulin Conc(µM)", 
     pch=16, col="blue")

regression <- lm(insulin_concentration ~ drug_concentration)

abline(regression, col="red", lwd=2)

#next comment is a lie
coefficients(regression)

print(regression) #i love r

set.seed(1000)

mean_aid <- 54138
sd_aid <- 20000
num_students <- 2000

money_money_money <- rnorm(num_students, mean = mean_aid, sd = sd_aid)

hist(money_money_money, 
     main="Dist Aid for First-Year Students",
     xlab="Financial Aid Monies($)",
     ylab="Number of Students",
     col="skyblue", 
     border="black", 
     breaks=30)
# should be enough breaks... juiced it a bit to make it look a bigger bell curve ish

#okay so looking at this it appears there is like there are negative nums which is bad
# using google is seems like a log option would be better

