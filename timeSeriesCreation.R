#Creating data
myData <- runif(n=50, min = 10, max = 45)

#ts for class time series
#Data starts in 1956 and 4 observation/year (quarterly)
mytimeseries <- ts(myData, start=1985, frequency = 4)

#Visualizing the data
plot(mytimeseries)

#Visualizing the data
class(mytimeseries)

#Checking the class
time(mytimeseries)

#Changing the start argument
newTimeSeries <- ts(myData, start = c(1956,3), 
                    frequency = 4)

#Hourly time series
HourlyTimeSeries <- ts(myData, start = c(1,8), frequency = 24)