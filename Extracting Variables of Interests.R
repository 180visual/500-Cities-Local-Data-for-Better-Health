# File: Data Extraction
# Author: Kun Yuan


# Load the required packages
library(magrittr)
library(dplyr)
library(tidyverse)

# Set up working directory and load in data
# You could find the data in the repository
filepath <- file.path("~","Documents","2019WI_Class","QBS180 Data Vis","hw","final", fsep = .Platform$file.sep)
setwd(filepath)
data = read.csv('500_Cities__Local_Data_for_Better_Health__2018_release.csv', header = T)

# Extract state-level data
state_dat = data[-(1:56),]
data.example = data[(1:56),]
# Extract Variables of interests
d.healthinsurance = data1[which(data1$MeasureId == 'ACCESS2'),]
d.arthritis = data1[which(data1$MeasureId == 'ARTHRITIS'),]
d.bingedrinking = data1[which(data1$MeasureId == 'BINGE'),]
d.highbloodpressure = data1[which(data1$MeasureId == 'BPHIGH'),]
d.takingBPMedication = data1[which(data1$MeasureId == 'BPMED'),]
d.cancer = data1[which(data1$MeasureId == 'CANCER'),]
d.currentasthma = data1[which(data1$MeasureId == 'CASTHMA'),]
d.coronaryheartdiease = data1[which(data1$MeasureId == 'CHD'),]
d.annualcheckup = data1[which(data1$MeasureId =='CHECKUP'),]
d.cholesterolscreening = data1[which(data1$MeasureId == 'CHOLSCREEN'),]
d.colorectalcancerscreening = data1[which(data1$MeasureId == 'COLON_SCREEN'),]
d.COPD = data1[which(data1$MeasureId == 'COPD'),]
d.papsmeartest = data1[which(data1$MeasureId == 'PAPTEST'),]
d.corepreventiveservicesforoldermen = data1[which(data1$MeasureId == 'COREM'),]
d.corepreventiveservicesforolderwomen = data1[which(data1$MeasureId == 'COREW'),]
d.currentsmoking = data1[which(data1$MeasureId == 'CSMOKING'),]
d.dentalvisit = data1[which(data1$MeasureId == 'DENTAL'),]
d.diabetes = data1[which(data1$MeasureId == 'DIABETES'),]
d.highcholesterol = data1[which(data1$MeasureId == 'HIGHCHOL'),]
d.chronickidneydisease = data1[which(data1$MeasureId == 'KIDNEY'),]
d.physicalinactivity = data1[which(data1$MeasureId == 'LPA'),]
d.mammograph = data1[which(data1$MeasureId == 'MAMMOUSE'),]
d.mentalhealth = data1[which(data1$MeasureId == 'MHLTH'),]
d.obesity = data1[which(data1$MeasureId == 'OBESITY'),]
d.papsmeartest = data1[which(data1$MeasureId == 'PAPTEST'),]
d.physicalhealth = data1[which(data1$MeasureId == 'PHLTH'),]
d.sleeplessthan7 = data1[which(data1$MeasureId == 'SLEEP'),]
d.stroke = data1[which(data1$MeasureId == 'STROKE'),]
d.teethloss = data1[which(data1$MeasureId == 'TEETHLOST'),]