
library(mvtnorm)

# *Multivariate normal density # 1

v <- seq(
  from = -3,
  to = 3,
  length = 20
)
M_multivariatenormal <- expand.grid(
  x = v,
  y = v,
  z = v
)
v_mean <- c(0,0,0)
M_sigma <- matrix(
  data = c(
    2,-1,0,
    -1,2,1,
    0,1,2
  ),
  nrow = 3,
  byrow = TRUE
)

M_multivariatenormal$density <- mvtnorm::dmvnorm(
  x = M_multivariatenormal,
  mean = v_mean,
  sigma = M_sigma
)
M_multivariatenormal$density_bucket <- ggplot2::cut_number(
  x = M_multivariatenormal$density,
  n = 4
)
v_color <- rev(gray.colors(
  n = length(levels(M_multivariatenormal$density_bucket)),
  start = 0,
  end = 1
))
names(v_color) <- levels(M_multivariatenormal$density_bucket)
M_multivariatenormal$color <- v_color[as.character(M_multivariatenormal$density_bucket)]
pairs(
  x = M_multivariatenormal[,c("x","y","z")],
  col = M_multivariatenormal$color,
  pch = 19,
  main = "Scatterplot matrix of the multivariate normal density"
)

# * Multivariate normal random number generation. # 1
M_rnvnorm <- mvtnorm::rmvnorm(
  n = 100,
  mean = v_mean,
  sigma = M_sigma
)
colnames(M_rnvnorm) <- c("x","y","z")
M_rnvnorm <- as.data.frame(
  x = M_rnvnorm
)
p <- plotly::plot_ly(
  x = M_rnvnorm$x,
  y = M_rnvnorm$y,
  z = M_rnvnorm$z,
  type="scatter3d",
  mode="markers"
)
p

# * Multivariate probabilities # 1
mvtnorm::pmvnorm(
  lower = c(-1,-2,-2),
  upper = c(2,1,3),
  mean = v_mean,
  sigma =M_sigma
)

###############################################################################
# *Multivariate normal density # 2

v <- seq(
  from = -3,
  to = 3,
  length = 20
)
M_multivariatenormal <- expand.grid(
  x = v,
  y = v,
  z = v
)
v_mean <- c(0,0,0)
M_sigma <- matrix(
  data = c(
    1,-1,0,
    -1,2,1,
    0,1,3
    ),
  nrow = 3,
  byrow = TRUE
)

M_multivariatenormal$density <- mvtnorm::dmvnorm(
  x = M_multivariatenormal,
  mean = v_mean,
  sigma = M_sigma
)
M_multivariatenormal$density_bucket <- ggplot2::cut_number(
  x = M_multivariatenormal$density,
  n = 4
)
v_color <- rev(gray.colors(
  n = length(levels(M_multivariatenormal$density_bucket)),
  start = 0,
  end = 1
))
names(v_color) <- levels(M_multivariatenormal$density_bucket)
M_multivariatenormal$color <- v_color[as.character(M_multivariatenormal$density_bucket)]
pairs(
  x = M_multivariatenormal[,c("x","y","z")],
  col = M_multivariatenormal$color,
  pch = 19,
  main = "Scatterplot matrix of the multivariate normal density "
)

# * Multivariate normal random number generation. # 2
M_rnvnorm <- mvtnorm::rmvnorm(
  n = 100,
  mean = v_mean,
  sigma = M_sigma
)
colnames(M_rnvnorm) <- c("x","y","z")
M_rnvnorm <- as.data.frame(
  x = M_rnvnorm
)
p <- plotly::plot_ly(
  x = M_rnvnorm$x,
  y = M_rnvnorm$y,
  z = M_rnvnorm$z,
  type="scatter3d",
  mode="markers"
)
p

# * Multivariate probabilities # 2
mvtnorm::pmvnorm(
  lower = c(-1,-2,-2),
  upper = c(2,1,3),
  mean = v_mean,
  sigma =M_sigma
)

#############################################################################

# *Multivariate normal density # 3

v <- seq(
  from = -3,
  to = 3,
  length = 20
)
M_multivariatenormal <- expand.grid(
  x = v,
  y = v,
  z = v
)
v_mean <- c(0,0,0)
M_sigma <- matrix(
  data = c(
    6,-1,0,
    -1,5,1,
    0,1,4
  ),
  nrow = 3,
  byrow = TRUE
)

M_multivariatenormal$density <- mvtnorm::dmvnorm(
  x = M_multivariatenormal,
  mean = v_mean,
  sigma = M_sigma
)
M_multivariatenormal$density_bucket <- ggplot2::cut_number(
  x = M_multivariatenormal$density,
  n = 4
)
v_color <- rev(gray.colors(
  n = length(levels(M_multivariatenormal$density_bucket)),
  start = 0,
  end = 1
))
names(v_color) <- levels(M_multivariatenormal$density_bucket)
M_multivariatenormal$color <- v_color[as.character(M_multivariatenormal$density_bucket)]
pairs(
  x = M_multivariatenormal[,c("x","y","z")],
  col = M_multivariatenormal$color,
  pch = 19,
  main = "Scatterplot matrix of the multivariate normal density"
)

# * Multivariate normal random number generation. # 3
M_rnvnorm <- mvtnorm::rmvnorm(
  n = 100,
  mean = v_mean,
  sigma = M_sigma
)
colnames(M_rnvnorm) <- c("x","y","z")
M_rnvnorm <- as.data.frame(
  x = M_rnvnorm
)
p <- plotly::plot_ly(
  x = M_rnvnorm$x,
  y = M_rnvnorm$y,
  z = M_rnvnorm$z,
  type="scatter3d",
  mode="markers"
)
p

# * Multivariate probabilities # 3
mvtnorm::pmvnorm(
  lower = c(-1,-2,-2),
  upper = c(2,1,3),
  mean = v_mean,
  sigma =M_sigma
)
