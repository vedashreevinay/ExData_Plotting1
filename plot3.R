plot3 <- function()
{
  hh_data <- read_data()
  
  plot(hh_data$timestamp, hh_data$Sub_metering_1, xlab = "", ylab="Energy sub metering" , type = "l", col="black")
  lines(hh_data$timestamp, hh_data$Sub_metering_2, col="red")
  lines(hh_data$timestamp, hh_data$Sub_metering_3, col="blue")
  
  legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1), lwd=c(1,1))
  dev.copy(png, file = "plot3.png", width = 480, height = 480 )
  
  dev.off()
  cat("plot saved in", getwd())
}