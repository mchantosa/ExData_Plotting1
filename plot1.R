#This file creates plot1.png, a replica of unnamed-chunk-2.png

#Before running this plot, you must source("processData.R")

#Plot 1: unnamed-chunk-2.png
par(bg="transparent")
par(mfrow=c(1,1))
png("plot1.png", bg="transparent")#480 X 480 is default
hist(epc$Global_active_power,
     col = "red", 
     xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency",
     main = "Global Active Power")
dev.off()