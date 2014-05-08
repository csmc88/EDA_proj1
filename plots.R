#Read File
dataset <- read.table('household_power_consumption.txt')

#Quick Clean
#Replace Missing STRING, consider reformatting columns CHK
dataset[dataset=='?'] <- NA

#Manage Date Conversion
dates <- paste(dataset[,1],dataset[,2])
dates <- as.POSIXct(dates, format = '%d/%m/%Y %H:%M:%S', tz = 'UTC')

#Calculate Start and End Date
startDate <- as.POSIXct('2007-02-01', format = '%Y-%m-%d', tz = 'UTC')
endDate <- startDate + 2*24*3600 - 1

