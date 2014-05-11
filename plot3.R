source("readData.R")

#plot the three sub metering timeseries from dat, which extract two day datas from sources 

png("plot3.png",width = 480, height = 480)
plot(dat$DateTime, dat$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering", 
     main="")
lines(dat$DateTime, dat$Sub_metering_2, col="red")
lines(dat$DateTime, dat$Sub_metering_3, col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),bty="n",lwd=1)
dev.off()