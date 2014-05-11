source("readData.R")

#plot time series from dat, which extract two day datas from sources 
# Set locale to ANSI-C to display the labels for weekdays
Sys.setlocale("LC_TIME", "C")

png("plot2.png",width = 480, height = 480)

# plot the Global active power timeseries
with(dat, plot(DateTime,Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type="l"))

#close the graphics device
dev.off()
