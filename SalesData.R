#Loading library
library(data.table)
library(tibble)
library(ggplot2)
library(forecast)

#Data loading
count_raw_data <- fread("/Users/vimal/TimeSeriesAnalysis_Forecasting/ITstore-bidaily.csv") %>% as.tibble()

#Conversion to a time series
counts <- ts(count_raw_data$V2, start = 1, 
             frequency = 12)

#Visualization
plot(counts, xlab = "Week", ylab = "Customer count")

monthplot(counts, labels = 1:12, xlab = "Bidaily Units")

seasonplot(counts, season.labels = F, xlab = "")