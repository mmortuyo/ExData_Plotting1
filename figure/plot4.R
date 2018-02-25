### GOAL: PLOT Sub_metering_X of dt

## check if sub(data)set dss already exists, else call source to load
if(!exists("dss")){
  source("source.R")
} 

## Create a 2 x 2 window layout
par(mfrow=c(2,2))

## Plot 4
with(dss, {
  plot(Global_active_power ~ dt, type="l", xlab="", ylab="Global Active Power")
  plot(Voltage ~ dt, type="l", xlab="datetime", ylab="Voltage")
  plot(Sub_metering_1 ~ dt, type="l", xlab="", ylab="Energy sub metering")
  lines(Sub_metering_2 ~ dt, col='Red')
  lines(Sub_metering_3 ~ dt, col='Blue')
  legend("topright",  col = c("Black","Red","Blue"), lty=1, bty="n", cex=0.7,
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(Global_reactive_power ~ dt, type="l", xlab="datetime", ylab="Global_reactive_power")
})

## Saving to file
dev.copy(png, file="./plot4.png", height=480, width=480)
dev.off()