library(lubridate)

#Changing to another time zone
x <- ymd_hms("2014-04-12 23:12:00", tz = "Europe/Prague")
minute(x)

#Changing the minutes value
minute(x) <- 7; x

#Changing to another time zone
with_tz(x, tz="Europe/London")

#creating another time point
y <- ymd_hms("2015-04-12 23:12:00", tz = "Europe/Prague")

#calculating interval between two time points
interval(x,y)