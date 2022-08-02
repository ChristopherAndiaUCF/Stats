# 
# 
# Take your data set from the first assignment of our course. Find a numeric column that interests you.
# 
# * Plot a histogram of the column of data. Clearly label your plot with "raw data".
# * Plot a histogram of your data after center and scaling. Clearly label your plot "center and scale". Comment on how your transformed data is different from your original data.
# * Plot a histogram of your data after transforming the range to $[0,1]$. Clearly label your plot "rescale". Comment on how your transformed data is different from your original data.
# * Plot a histogram of your data after applying a log-transform. Clearly label your plot "log-transform". If your data has negative or zero values, rescale your data first. Comment on how your transformed data is different from your original data.
# * Plot a histogram of your data after applying a square-root transform. Clearly label your plot "square-root transform". If your data has negative values, rescale your data first. Comment on how your transformed data is different from your original data.
# * Plot a histogram of your data after applying a power-transform. Clearly label your plot with the family parameter you used. Comment on how your transformed data is different from your original data.

setwd("C:/Users/brand/OneDrive/Documents/GitHub/Prob&Stats")
getwd()
library(car)
movies.df <- read.csv("movies.csv")
movies.df <- na.omit(movies.df)

Runtime = movies.df$runtime
hist(x = Runtime, main = "raw data")

Runtime_Center_Scale = scale(Runtime)
hist(x = Runtime_Center_Scale, main = "center and scale")

Runtime_Rescale = scales::rescale(Runtime)
hist(x = Runtime_Rescale, main = "rescale")

Runtime_Log_Transform = log(Runtime)
hist(x = Runtime_Log_Transform, main = "log-transform")

Runtime_Sqrt = sqrt(Runtime)
hist(x = Runtime_Sqrt, main = "square-root transform")

# car::powerTransform(Runtime, family = "")
# hist(x = Runtime_Box_Cox$xqr, main = "Box-Cox transform")

v <- as.numeric(Runtime)

car::powerTransform(v, family = "bcPower")

hist((v^-1.39 - 1) / -1.39, main = "bcPower transform")

