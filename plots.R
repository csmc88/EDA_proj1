#Read File
library(data.table)
dataset <- fread('household_power_consumption.txt', na.strings = '?')
#read dates on 1 fread --> trasnform --> read the rest on another fread with frame of reference

# // Quick Clean //
#Reformat COlumn Types
colTypes <- c(rep('character'))

#Manage Date Conversion
dates <- paste(dataset[,1],dataset[,2])
dates <- as.POSIXct(dates, format = '%d/%m/%Y %H:%M:%S', tz = 'UTC')

#Calculate Start and End Date
startDate <- as.POSIXct('2007-02-01', format = '%Y-%m-%d', tz = 'UTC')
endDate <- startDate + 2*24*3600 - 1

