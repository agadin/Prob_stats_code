x <- c(0,5, 10, 20, 40, 45)
F_x <- c(0,0.7, 0.75, 0.85, 0.92, 1)

# Init graph
plot(x, F_x, type="n", xlab="Percentage of ethylbenzene in the fuel (%)", ylab="Cumulative Probability F(X)", 
     main="Cumulative Density Plot", ylim=c(0, 1), xlim=c(0, 50))

for(i in 1:(length(x) - 1)) {
  segments(x[i], F_x[i], x[i+1], F_x[i], col="blue", lwd=2)
  
  points(x[i], F_x[i], pch=16, col="blue", cex=1.5)
  points(x[i+1], F_x[i], pch=1, col="blue", cex=1.5)
}

# Add an arrow pointing right at the last point
arrows(x[length(x)], F_x[length(F_x)], x[length(x)] + 3, F_x[length(F_x)], col="blue", lwd=2, length=0.1)

# Fun fact I originally did this in python then copy and pasted it in R and just modified some syntax and added the points function :)
points(x[length(x)], F_x[length(x)], pch=16, col="blue", cex=1.5)
grid()


p <- 0.03
k <- 11
final <- pgeom(k-2, prob=p, lower.tail= FALSE)
print(final)

P_11 <-dgeom(k-1, prob= p)

print(round(P_11,4))

P_40 <-pgeom(k- 2, prob= p, lower.tail= FALSE)
print(round(P_40,4))

q_40 <-qgeom(0.4, prob= p)
print(round(q_40,4))

set.seed(2)
rom_sample <-rgeom(10, prob= p)
print(round(rom_sample,4))
