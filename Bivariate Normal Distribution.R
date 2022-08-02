
install.packages("mvtnorm")
library(mvtnorm)

v_mean <- c(-5,10)
M_sigma <- matrix(
  data = c(2,-1,-1,3),
  nrow = 2
)

M_sigma

M_rnvnorm <- mvtnorm::rmvnorm(
  n = 10000,
  mean = v_mean,
  sigma = M_sigma
)
colnames(M_rnvnorm) <- c("x","y")
M_rnvnorm <- as.data.frame(
  x = M_rnvnorm
)
require(ggplot2)

# Scatter Plot
ggplot(M_rnvnorm) +
  aes(x = x,y = y) + 
  geom_point()

  # Histogram of x
  ggplot(M_rnvnorm) +
    aes(x = x) + 
    geom_histogram()
  
  # Histogram of y
  ggplot(M_rnvnorm) +
    aes(x = y) + 
    geom_histogram()  
  