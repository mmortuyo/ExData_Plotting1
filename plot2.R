### GOAL: PLOT Global_active_power of dt

## check if sub(data)set dss already exists, else call source to load
if(!exists("dss")){
  source("source.R")
} 

par(mfrow=c(1,1))
## Plot 2
with(dss, plot(Global_active_power ~ dt, type="l", xlab="", ylab="Global Active Power (kilowatts)"))

## Saving to file
dev.copy(png, file="./plot2.png", height=480, width=480)
dev.off()