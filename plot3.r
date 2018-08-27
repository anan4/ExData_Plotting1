## See data preparation code is in file "plot1.r"

## NOTE: weekdays are in Catalan: dj. = thu, dv. = fri, ds. = sat

# plot 3
png("plot3.png")
plot(dset$Time,dset$Sub_metering_1 , type = "n", xlab = "", ylab = "Energy sub metering")
lines(dset$Time,dset$Sub_metering_1, col="black")
lines(dset$Time,dset$Sub_metering_2, col="red")
lines(dset$Time,dset$Sub_metering_3, col="blue")
legend("topright",pch = intToUtf8(8212),col = c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
