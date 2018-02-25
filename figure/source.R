### GOAL: READ electric power consumption (EPC) data set, and SUBSET only dates "1/2/2007" and "2/2/2007"

## fork and clone github 'ExData_Plotting1' repo of Mr Peng
## set working directory to figure folder of cloned repo 

setwd("~/GitHub/ExData_Plotting1/figure")

## download dataset of electric power consumption
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
fin <- "household_power_consumption.zip"
xfin <- "household_power_consumption.txt"

if (!file.exists(fin)) {
  download.file(url, fin, method = "auto")
  unzip(fin)
}

## rough estimate of how much memory the dataset will require in memory before reading into R - Mega unit
# round((2075259*object.size(date)+2075259*object.size(time)+2075259*object.size(numeric))/2^{20},2)
## 8169.8 Mega bytes RAM requirement for computation

## the EPC dataset loaded as ds
ds <- read.csv(xfin, header=T, sep=';', na.strings="?") 

## format Date of ds
ds$Date <- as.Date(ds$Date, format="%d/%m/%Y")

## subset ds to dss with records from Dates "1/2/2007" and "2/2/2007"
dss <- subset(ds, ds$Date == "2007-02-01" | ds$Date == "2007-02-02")
dss$dt <- as.POSIXct(paste(dss$Date, dss$Time," "))

## remove the original dataset ds to freeup space
rm(ds)
