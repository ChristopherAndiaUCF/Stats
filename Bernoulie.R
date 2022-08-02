
setwd("C:/Users/brand/OneDrive/Documents/GitHub/Prob&Stats")
getwd()

library(readxl)
x <- read_excel("coinflip.xlsx", col_names = FALSE)

coinflip <- as.numeric(x$...1)

mean(coinflip)
var(coinflip)

hist(coinflip)

table(coinflip)
# p = P(X=1)
p <- 16/30

dbinom(
  x = 0:1,
  size = 1,
  prob = p
)

pbinom(
  q = c(
    0,0.24,0.5,0.75,1
  ),
  size = 1,
  prob = p
)  

qbinom(
  p = c(
    0,0.24,0.5,0.75,1
  ),
  size = 1,
  prob = p
)
  
  
rbinom(
  n = 30,
  size = 1,
  prob = p
)
  
  