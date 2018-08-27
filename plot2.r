## See data preparation code is in file "plot1.r"

# plot 2
png("plot2.png")
plot(dset$Time,dset$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
