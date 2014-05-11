source("readData.R")
#plot first histogram from dat, which extract two day datas from sources 
png("plot1.png",width = 480, height = 480)
 
#plot the histogram
hist(dat$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

#close the graphics device
dev.off()
