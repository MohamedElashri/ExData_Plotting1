data <- read.table("Data.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")


subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
GlobalActivePower <- as.numeric(subsetdata$Global_active_power)
GlobalReactivePower <- as.numeric(subsetdata$Global_reactive_power)
voltage <- as.numeric(subsetdata$Voltage)
subMetering1 <- as.numeric(subsetdata$Sub_metering_1)
subMetering2 <- as.numeric(subsetdata$Sub_metering_2)
subMetering3 <- as.numeric(subsetdata$Sub_metering_3)


timeseries <- strptime(paste(subsetdata$Date, subsetdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
plot(timeseries, GlobalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
