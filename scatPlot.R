#setwd("~/Documents/2019WI_Class/QBS180 Data Vis/hw/final/Rshiny/final180/assc_v1/")
#dat <- read.csv("cities_val.csv", header = T)
#str(dat)

###########
# Fucntion: the scatter plot with one health outcome variable as x axis, and a one prevention factor as y axis
## Arguement: data - cities_val.csv
##            xcol - name of the          
###########
scatPlot <- function(data, xcol = "Stroke", ycol = "AnnualCheckup"){

    par(mfrow=c(1,1), mar=c(6,4,4,1), mgp=c(2.5,1,0))
    plot(data[,xcol], data[,ycol], pch = 19, col = "coral2",
         xaxt = "n", yaxt = "n", xlab = paste(xcol,"(%)"), ylab = paste(ycol, "(%)"),
         xlim = c(min(data[,xcol]), max(data[,xcol])), ylim = c(min(data[,ycol]), max(data[,ycol])))
    axis(side=1, at = seq(min(data[,xcol]), max(data[,xcol]), length=5), labels = seq(min(data[,xcol]), max(data[,xcol]), length=5))
    axis(side=2, at = seq(min(data[,ycol]), max(data[,ycol]), length=5), labels = seq(min(data[,ycol]), max(data[,ycol]), length=5))
    intcpt <-  lm(data[,ycol] ~ data[,xcol])$coef[1]
    slope <-   lm(data[,ycol] ~ data[,xcol])$coef[2]
    lines(c(min(data[,xcol]), max(data[,xcol])), intcpt +slope * c(min(data[,xcol]), max(data[,xcol])),
          col = "black", lwd = 3)
    
    title(sub = paste("R =", round(cor(data[,xcol], data[,ycol]),2),
                              ", p value =", round(cor(data[,xcol], data[,ycol]),2)))
    return()
}
