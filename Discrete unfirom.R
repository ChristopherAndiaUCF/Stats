
setwd("C:/Users/brand/OneDrive/Documents/GitHub/Prob&Stats")
getwd()

library(readxl)
x <- read_excel("dieroll.xlsx", col_names = TRUE)
x

hist(x$Prob)
hist(x$Outcome)
hist(x$Prob_Diff)
