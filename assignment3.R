F_x <- function(x) (x^3 / 4) + (3/4) * x

curve(F_x, from=0, to=1, col="blue", lwd=2, ylab="F(x)", xlab="x", 
      main="Cumulative Density Function of X", xlim=c(0,1.2), ylim=c(0,1))

segments(1, 1, 1.2, 1, col="blue", lwd=2)

points(0, 0, pch=16, col="red")  
points(1, 1, pch=16, col="red")  
points(1.2, 1, pch=16, col="red") 

# Add reference lines
abline(h=0, col="red", lty=2)  
abline(h=1, col="red", lty=2) 


f_x <- function(x) (3/4) *(x^2 + 1)

E_X <- integrate(function(x) x *f_x(x), lower = 0,upper = 1)$value
E_X2 <- integrate(function(x) x^2 * f_x(x), lower = 0, upper = 1)$value


Var_X <- E_X2 - E_X^2

F_x <- function(x) (x^3 / 4) + (3/4) * x


curve(F_x, from=0, to=1, col="blue", lwd=2, ylab="F(x)", xlab="x", 
      main="Cumul Density Function of X")


points(0, 0, pch=16, col="red") 
points(1, 1, pch=16, col="red")

abline(h=0, col="red", lty=2)  
abline(h=1, col="red", lty=2)  # office hours

coefficients<- c(-3, 0, 3, 1)

roots <- polyroot(coefficients)

quantile_75 <-Re(roots[which(Re(roots) >= 0 & Re(roots)<= 1)]) # stack, stack, stack overflow

sprintf("0.75 quantile: %.4f", quantile_75)




plot(c(0,2,2), c(0,0,2), type="l", xlab="x", ylab="y",
     main=expression("Domain of " * f[X,Y](x, y))) #I have no clue how/why this works
polygon(c(0,2,2), c(0,0,2), col="lightblue", border="blue")

library(MASS)  #display functions-> source stack overflow

integrand <- function(x, y) {
  x *y^2
}

integral_value <- integrate(function(y) {
  sapply(y, function(y_val) {
    integrate(function(x) integrand(x, y_val), lower = y_val, upper = 2)$value
  })
}, lower = 0, upper = 2)$value #found the format on stack

c_value <- fractions(1 / integral_value)
print(c_value)



f_X<- function(x)(5/32) * x^4 #function define


E_X <- integrate(function(x) x * f_X(x), lower = 0, upper = 2)



f_X <- function(x) (5/32) * x^4

E_X2<- integrate(function(x) x^2 *f_X(x), lower = 0, upper = 2)


print(E_X2)


f_Y <- function(y) (15/16) * y^2 -(15/64) * y^4

E_Y2 <- integrate(function(y) y^2 * f_Y(y), lower = 0, upper = 2)$value

print(E_Y2)

Var_Y <- E_Y2 - (E_Y^2)

print(Var_Y)

f_XY <- function(x, y) (15/32) * x * y^2

E_XY <- integrate(function(y) {
  sapply(y, function(y_val) {
    integrate(function(x) x * y_val * f_XY(x, y_val), lower = y_val, upper = 2)$value
  })
}, lower = 0, upper = 2)$value

# Print result
cat("The expected value E[XY] is:", E_XY, "\n")


