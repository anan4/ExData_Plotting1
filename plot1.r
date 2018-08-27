## Exploratory Data Analysis - Assignment week 1
# Reading the data from dataset file suposing it has been already downloaded to the wd
# After exploring the file I have observed lines from 66638 to 69518 (2880 lines)
#  are the ones corresponding to days 1-2-2007 and 2-2-2007
#  I will read only those lines
dset <- read.table("household_power_consumption.txt",skip=66638,nrows = 2880,sep=";",colClasses = "character")

# Read variable names in line 1 of the dataset file and ser colnames in my data frame
cnames <- read.table("household_power_consumption.txt",nrows = 1,sep=";",colClasses = "character")
colnames(dset) <- cnames[1,]

# Convert data to corresponding classes
dset$Global_active_power <- as.numeric(dset$Global_active_power)
dset$Time <- as.POSIXct(paste(dset$Date,dset$Time), format = "%d/%m/%Y %H:%M:%S")
dset$Date <- as.Date(dset$Date, format = "%d/%m/%Y")

# plot 1
png("plot1.png")
hist(dset$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")
dev.off()
