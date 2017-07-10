#This file creates plot3.png, a replica of unnamed-chunk-4.png

#Before running this plot, you must source("processData.R")

#Plot 3: unnamed-chunk-4.png
par(bg="transparent")
par(mfrow=c(1,1))
png("plot3.png", bg="transparent")#480 X 480 is default
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
dev.off()