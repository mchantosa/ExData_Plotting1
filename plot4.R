#This file creates plot4.png, a replica of unnamed-chunk-5.png

#Before running this plot, you must source("processData.R")

#Plot 4: unnamed-chunk-5.png
png("plot4.png", bg="transparent")#480 X 480 is default
par(mfrow=c(2,2),bg="transparent")

#  Plot(1,1)
plot(epc$dateTime, epc$Global_active_power, 
     type = "l",
     ylab = "Global Active Power",
     xlab = "")

#  Plot(1,2)
plot(epc$dateTime, epc$Voltage, 
     type = "l",
     ylab = "Voltage",
     xlab = "datetime")

#  Plot(2,1)
plot(epc$dateTime, epc$Sub_metering_1, 
     type = "l",
     ylab = "Energy sub metering",
     xlab = "")
points(epc$dateTime, epc$Sub_metering_2, 
       type = "l", col = "red")
points(epc$dateTime, epc$Sub_metering_3, 
       type = "l", col = "blue")
legend("topright",col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1))

#  Plot(2,2)
plot(epc$dateTime, epc$Global_reactive_power, 
     type = "l",
     ylab = "Global_reactive_power",
     xlab = "datetime")
dev.off()