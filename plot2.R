#This file creates plot2.png, a replica of unnamed-chunk-3.png

#Before running this plot, you must source("processData.R")

#Plot 2: unnamed-chunk-3.png
par(bg="transparent")
par(mfrow=c(1,1))
png("plot2.png", bg="transparent")#480 X 480 is default
plot(epc$dateTime, epc$Global_active_power, 
     type = "l",
     ylab = "Global Active Power (killowatts)",
     xlab = "")
dev.off()