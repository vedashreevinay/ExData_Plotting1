plot4 <- function()
{
  par(mfrow = c(2,2))
  hh_data <- read_data()
  
  #plot1 in row 1,1  
  plot(hh_data$timestamp, hh_data$Global_active_power, xlab = "", ylab="Global Active Power" , type = "l")
  
  #plot2 in row 1, 2
  plot(hh_data$timestamp, hh_data$Voltage, xlab = "datetime", ylab="Voltage" , type = "l")
  
  #plot3 
  plot(hh_data$timestamp, hh_data$Sub_metering_1, xlab = "", ylab="Energy sub metering" , type = "l", col="black")
  lines(hh_data$timestamp, hh_data$Sub_metering_2, col="red")
  lines(hh_data$timestamp, hh_data$Sub_metering_3, col="blue")
  
  legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1), lwd=c(1,1), bty="n", cex=.5)
  
  #plot4
  plot(hh_data$timestamp, hh_data$Global_reactive_power, xlab = "datetime", ylab="Global_reactive_power" , type = "l")
  
  dev.copy(png, file = "plot4.png", width = 480, height = 480 )
  
  dev.off()
  cat("plot saved in", getwd())
  
}