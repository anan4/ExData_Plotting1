## See data preparation code is in file "plot1.r"

## NOTE: weekdays are in Catalan: dj. = thu, dv. = fri, ds. = sat

# plot 2
png("plot2.png")
plot(dset$Time,dset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
