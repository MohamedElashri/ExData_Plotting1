data <- read.table("Data.txt", header= TRUE, sep=";", stringsAsFactors=FALSE, dec=".")


subsetdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
GlobalActivePower <- as.numeric(subsetdata$Global_active_power)
GlobalReactivePower <- as.numeric(subsetdata$Global_reactive_power)
voltage <- as.numeric(subsetdata$Voltage)
subMetering1 <- as.numeric(subsetdata$Sub_metering_1)
subMetering2 <- as.numeric(subsetdata$Sub_metering_2)
subMetering3 <- as.numeric(subsetdata$Sub_metering_3)

plot(timeseries, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(timeseries, subMetering2, type="l", col="red")
lines(timeseries, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
