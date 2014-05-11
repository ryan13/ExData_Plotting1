source("readData.R")

#plot series plots, which extract two day datas from sources clock wise
png("plot4.png",width = 480, height = 480)
par(mfrow=c(2,2))


# plot the Global active power timeseries
with(dat, plot(DateTime,Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type="l"))

#plot top right timseries plot
with(dat, plot(DateTime,Voltage,ylab="Voltage",xlab="datetime",type="l"))


# plot the three sub metering timeseries in bottom left
with(dat, plot(DateTime,Sub_metering_1,xlab="",ylab="Energy sub metering",type="l"))
with(dat, lines(DateTime,Sub_metering_2,col="red"))
with(dat, lines(DateTime,Sub_metering_3,col="blue"))

##Add a legend
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lwd=1,bty="n")

#plot bottom right plot
with(dat, plot(DateTime,Global_reactive_power,xlab="datetime",type="l"))


#close the graphics device
dev.off()

