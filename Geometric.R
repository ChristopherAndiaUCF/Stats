
setwd("C:/Users/brand/OneDrive/Documents/GitHub/Prob&Stats")
getwd()

library(readxl)
x <- read_excel("coinfailures.xlsx", col_names = TRUE)

coinflip <- as.numeric(x$Failures)

failure_tbl <- table(coinflip)

barplot(failure_tbl, main="BarPlot of Counts of Failures Before Flipping Heads",
        xlab = "# of Failures before Flipping Heads")

mean <- mean(coinflip)

# E(X) = (1-p)/p
# E(X)= sample mean = 0.9333 
# 0.9333 = (1-p)/p
p = 0.5173 


density_tbl <- table(dgeom(
  x = coinflip,
  prob = p
))

barplot(density_tbl, main="Density Barlplot",
        xlab = "Density of  Failures before Flipping Heads")


dgeom(
  x = 0:10,
  prob = 0.5
)


pgeom(
  q =0:10,
  prob = 0.5
)


qgeom(
  p = c(
    0,0.25,0.5,0.75,1
  ),
  prob = 0.5
)


rgeom(
  n = 100,
  prob = 0.5
)


# p <- 13/30
# q <- 1-p
# 
# EV <- q/p




  