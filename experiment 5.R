#1
a <- 0
b <- 60

prob_a <- 1 - punif(45, min = a, max = b)
prob_a

prob_b = punif(30,min = a,max = b) - punif(20,min = a, max = b)
prob_b



#2
lambda <- 1/2
x <- 3

density <- dexp(x, rate = lambda)
density

x_values <- seq(0, 5, by = 0.01)
density_values <- dexp(x_values, rate = lambda)
plot(x_values, density_values, type = "l", xlab = "x", ylab = "Probability Density")

prob_at_most_3 <- pexp(3, rate = lambda)
prob_at_most_3

cumulative_probs <- pexp(x_values, rate = lambda)
plot(x_values, cumulative_probs, type = "l", xlab = "x", ylab = "Cumulative Probability")

simulated_data <- rexp(1000, rate = lambda)
hist(simulated_data, breaks = 20, prob = TRUE, xlab = "x", main = "Simulated Exponential Data")

#3
alpha <- 2
beta <- 1/3

prob_at_least_1 <- 1 - pgamma(1, shape = alpha, rate = beta)
prob_at_least_1

threshold <- 0.70
c <- qgamma(threshold, shape = alpha, rate = beta)
c