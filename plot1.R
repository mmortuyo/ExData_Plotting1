### GOAL: Plot frequency distribution of Global Active Power (in kilowatt)

## check if sub(data)set dss already exists, else call source to load
if(!exists("dss")){
  source("source.R")
} 

par(mfrow=c(1,1))
## Plot 1
hist(dss$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## Saving to file
dev.copy(png, file="./plot1.png", height=480, width=480)
dev.off()
