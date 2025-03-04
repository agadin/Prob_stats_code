# Alexander Gadin
# Section C

# problem 1
norm_prob_density <- function(x, mu, stdev) {
  exponent_e <- (-1/2)* ((x-mu)/(stdev))^2
  result = (1/(stdev*sqrt(2*pi))) * exp(exponent_e)
  return(result)
}

x <- 3
mu <- 2
stdev <- 0.5


func_result <- norm_prob_density(x, mu, stdev)
(func_result)

default_function_result = dnorm(x, mu, stdev)
(default_function_result)

binom_prob_dens <- function(x, n, p) {
  if (x > n || x< 0) {
    return(0)  #yay
  }
  
  binomial_coeff <- choose(n, x)  # Compute binomial coefficient
  probability <- binomial_coeff *(p^x) * ((1 -p)^(n - x))
  
  return(probability)
}

x <- 3   
n <- 5   

p <- 0.6

result <- binom_prob_dens(x, n, p)
print(result)

builtin_result <- dbinom(x, size = n, prob = p)
print(builtin_result)