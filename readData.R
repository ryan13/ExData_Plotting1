# Extract data
# Read two day data from 2007-02-01 00:00:00 and  2007-02-02 23:59:00
# It assumes that sqldf installed so we can extract only these data days

require("sqldf")
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
dat <- read.csv2.sql("./household_power_consumption.txt",mySql)
dat <- transform(dat,DateTime=strptime(paste(dat$Date,dat$Time), "%d/%m/%Y %H:%M:%S"))
