## See data preparation code in file "plot1.r"

## NOTE: weekdays are in Catalan: dj. = thu, dv. = fri, ds. = sat

# plot 4
png("plot4.png")
par(cex.lab=0.7)
par(cex.axis=0.7)
par(mfcol = c(2,2))
plot(dset$Time,dset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
plot(dset$Time,dset$Sub_metering_1 , type = "n", xlab = "", ylab = "Energy sub metering")
lines(dset$Time,dset$Sub_metering_1, col="black")
lines(dset$Time,dset$Sub_metering_2, col="red")
lines(dset$Time,dset$Sub_metering_3, col="blue")
legend("topright",pch = intToUtf8(8212),col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
  cex=0.7, bty="n")
plot(dset$Time,dset$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")
plot(dset$Time,dset$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()
