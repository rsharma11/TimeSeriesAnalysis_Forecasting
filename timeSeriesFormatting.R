x = cumsum(rnorm(n = 450))
y <-  ts(data = x, start = c(1914,11), frequency = 12)

plot(y)