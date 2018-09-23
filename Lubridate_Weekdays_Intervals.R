timePoint

#Check which day of the week
lubridate::wday(timePoint, label=TRUE, abbr=FALSE) #Display the name of the day, no abbreviation

#Changing to anoter time zone
with_tz(timePoint, tz="Europe/London")
timePoint

#getting the interval
time1 <- ymd_hms("1993-09-23 11:23:00", tz = "Asia/Kolkata")
time2 <- ymd_hms("1995-11-02 15:23:00", tz = "Asia/Kolkata")

timeInterval <-interval(time1, time2)
class(timeInterval)