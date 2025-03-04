# Lab 4
# Alexander Gadin

# Prob 1
x <- c(150, 180, 195, 210, 225, 240, 270)
fx <- c(0.15, 0.15, 0.1, 0.1, 0.25, 0.15, 0.1)

expected_value <- 0

for (i in 1:length(x)) {
  expected_value <- expected_value + x[i] * fx[i]
}

print(expected_value)

varience <- 0
data_mean <- mean(x)
for (i in 1:length(x)) {
  varience <- varience + fx[i]* (x[i]- data_mean)^2
}
print(varience)

# Prob 2
num <- sample(-50:50, 1)

for (i in num) { #like python syntax
  if (i >= -10 && i <= 10) {
    print("true")
  } else {
    print("Fale")
  }
}

repeat { #could have not just done a while???
  num <- sample(-50:50, 1)
  print(num) 
  if (num >= -10 && num <= 10) {
    print("yee")
    break 
  }
}

#Prob 3

coin_s <- numeric(50)

for (i in 1:50) {
  coin_s[i] <- sample(c(-1, 1), 1)  # -1 for heads 1 for tails
} # sample is weird

print(coin_flips)

coin_flips <- rbinom(50, 1, 0.5)  
coin_flips[coin_flips == 1] <- -1  
coin_flips[coin_flips == 0] <- 1   # yes I looked up how to do this because I like iot this way

longest_streak <- 0
current_streak <- 0

for (i in 1:length(coin_flips)) {
  if (coin_flips[i] == -1) {  # head
    current_streak <- current_streak + 1
    if (current_streak > longest_streak) {
      longest_streak <- current_streak  
    }
  } else {
    current_streak <- 0  
  }
}

print(paste("streak of heads:", longest_streak))


