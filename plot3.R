### GOAL: PLOT Sub_metering_X of dt

## check if sub(data)set dss already exists, else call source to load
if(!exists("dss")){
  source("source.R")
} 

## Plot 3
with(dss, {
  plot(Sub_metering_1 ~ dt, type="l", xlab="", ylab="Energy sub metering")
  lines(Sub_metering_2 ~ dt, col='Red')
  lines(Sub_metering_3 ~ dt, col='Blue')
  legend("topright",  col = c("Black","Red","Blue"), lty=1, lwd=2,
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  })

## Saving to file
dev.copy(png, file="./plot3.png", height=480, width=480)
dev.off()