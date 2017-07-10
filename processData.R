#This file reads in an electronic power consumption data file 
#  and process the data the prepare it for plotting excercizes


# Read in electronic power consumpion data
epc <- read.table("household_power_consumption.txt", 
                as.is = c(T, T, F, F, F, F, F, F, F), 
                sep = ";", 
                na.strings = "?", 
                header = TRUE)

#remove incomplete observations
epc[complete.cases(epc), ]

#Get dateTies in POSIXct format
dates <- epc$Date
times <- epc$Time
dt <- paste(dates, times)
dateTime = strptime(dt, "%d/%m/%Y %H:%M:%S", tz="GMT")
epc<-cbind(epc, dateTime)

#Subset
end <- as.POSIXct("2007-02-03 00:00:00", 
                  tz ="GMT", 
                  format = "%Y-%m-%d %H:%M:%S")
start <- as.POSIXct("2007-02-01 00:00:00",
                    tz = "GMT", 
                    format = "%Y-%m-%d %H:%M:%S")
epc<-epc[epc$dateTime<end,]
epc<-epc[epc$dateTime>=start,]