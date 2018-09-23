library(forecast)
library(ggplot2)

#Explore the data
str(AirPassengers)

#Plot of components
plot(decompose(AirPassengers))

#Plotting the forecast
plot(forecast(auto.arima(AirPassengers)))

#Plotting the seasonal data
ggseasonplot(AirPassengers, col = c(2,4), main = "Seasonal plot of dataset AirPassengers",
             xlab = "", ylab = "", bty = "1")