#Base R functions
###POSIXct, POSIXlt

x <- as.POSIXct("2015-12-25 11:45:34")
y <- as.POSIXlt("2015-12-25 11:45:34")
x;y
unclass(x); unclass(y)

###chron
library(chron)
z <- chron("12/25/2015", "23:34:09")
z
class(z)
unclass(z)

###lubridate
library(lubridate)

#ways to input the data
ymd(19850131)

dmy(31011985)

mdy(01311985)

#Taking time and date together
timePoint <- ymd_hms("1985-01-31 14:45:00", tz = "Asia/Kolkata")
timePoint

#Extracting components of time and date
hour(timePoint)
minute(timePoint)
second(timePoint)

day(timePoint)
month(timePoint)
year(timePoint)

#Changing the components of time and date
hour(timePoint) <- 20
minute(timePoint) <- 25
second(timePoint) <- 40

day(timePoint) <- 19
month(timePoint) <- 08
year(timePoint) <- 1982

timePoint

#Available timezones
OlsonNames()
