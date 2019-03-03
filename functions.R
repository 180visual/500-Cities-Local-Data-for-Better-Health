# Histogram for cancer data
# select the cities out of the data
#split the data into age adjusted pre and crude prev
a=c()
d.rate=c()
illness=c()
#function for selecting the ageadjusted prevalence
ageadjust <- function(d){
  a=d[which(d$GeographicLevel == 'City'),]
  return(a[which(a$DataValueTypeID == 'AgeAdjPrv'),])
}
#function for computing the mean values for each state
mean.data.value <- function(d){
  mean.data.value=mean(sum(d$Data_Value/100*d$PopulationCount)/sum(d$PopulationCount))
  return(mean.data.value)
}
#plot function
nationalillnessplot <- function(d,n1,a){
  d.rate=c(mean.data.value(d[which(d$StateAbbr == 'AL'),]),
           mean.data.value(d[which(d$StateAbbr == 'AK'),]),
           mean.data.value(d[which(d$StateAbbr == 'AZ'),]),
           mean.data.value(d[which(d$StateAbbr == 'AR'),]),
           mean.data.value(d[which(d$StateAbbr == 'CA'),]),
           mean.data.value(d[which(d$StateAbbr == 'CO'),]),
           mean.data.value(d[which(d$StateAbbr == 'CT'),]),
           mean.data.value(d[which(d$StateAbbr == 'DE'),]),
           mean.data.value(d[which(d$StateAbbr == 'DC'),]),
           mean.data.value(d[which(d$StateAbbr == 'FL'),]),
           mean.data.value(d[which(d$StateAbbr == 'GA'),]),
           mean.data.value(d[which(d$StateAbbr == 'HI'),]),
           mean.data.value(d[which(d$StateAbbr == 'ID'),]),
           mean.data.value(d[which(d$StateAbbr == 'IL'),]),
           mean.data.value(d[which(d$StateAbbr == 'IN'),]),
           mean.data.value(d[which(d$StateAbbr == 'IA'),]),
           mean.data.value(d[which(d$StateAbbr == 'KS'),]),
           mean.data.value(d[which(d$StateAbbr == 'KY'),]),
           mean.data.value(d[which(d$StateAbbr == 'LA'),]),
           mean.data.value(d[which(d$StateAbbr == 'ME'),]),
           mean.data.value(d[which(d$StateAbbr == 'MD'),]),
           mean.data.value(d[which(d$StateAbbr == 'MA'),]),
           mean.data.value(d[which(d$StateAbbr == 'MI'),]),
           mean.data.value(d[which(d$StateAbbr == 'MN'),]),
           mean.data.value(d[which(d$StateAbbr == 'MS'),]),
           mean.data.value(d[which(d$StateAbbr == 'MO'),]),
           mean.data.value(d[which(d$StateAbbr == 'MT'),]),
           mean.data.value(d[which(d$StateAbbr == 'NE'),]),
           mean.data.value(d[which(d$StateAbbr == 'NV'),]),
           mean.data.value(d[which(d$StateAbbr == 'NH'),]),
           mean.data.value(d[which(d$StateAbbr == 'NJ'),]),
           mean.data.value(d[which(d$StateAbbr == 'NM'),]),
           mean.data.value(d[which(d$StateAbbr == 'NY'),]),
           mean.data.value(d[which(d$StateAbbr == 'NC'),]),
           mean.data.value(d[which(d$StateAbbr == 'ND'),]),
           mean.data.value(d[which(d$StateAbbr == 'OH'),]),
           mean.data.value(d[which(d$StateAbbr == 'OK'),]),
           mean.data.value(d[which(d$StateAbbr == 'OR'),]),
           mean.data.value(d[which(d$StateAbbr == 'PA'),]),
           mean.data.value(d[which(d$StateAbbr == 'SC'),]),
           mean.data.value(d[which(d$StateAbbr == 'SD'),]),
           mean.data.value(d[which(d$StateAbbr == 'TN'),]),
           mean.data.value(d[which(d$StateAbbr == 'TX'),]),
           mean.data.value(d[which(d$StateAbbr == 'UT'),]),
           mean.data.value(d[which(d$StateAbbr == 'VT'),]),
           mean.data.value(d[which(d$StateAbbr == 'VA'),]),
           mean.data.value(d[which(d$StateAbbr == 'WA'),]),
           mean.data.value(d[which(d$StateAbbr == 'WV'),]),
           mean.data.value(d[which(d$StateAbbr == 'WI'),]),
           mean.data.value(d[which(d$StateAbbr == 'WY'),]))*100
  name.state = as.factor(c('AL','AK','AZ','AR','CA','CO','CT','DE','DC','FL','GA','HI','ID','IL','IN','IA','KS','KY','LA','ME','MD','MA','MI','MN','MS','MO','MT','NE','NV','NH','NJ','NM','NY','NV','ND','OH','OK','OR','PA','SC','SD','TN','TX','UT','VT','VA','WA','WV','WI','WY'))
  illness = data.frame('state'=name.state,'rate'=d.rate)
  plot(c(1:50), sort(illness$rate), type = 'n',xaxt='n',pch='.',ylim = c(0,n1),xlab = 'State Rank',ylab =  paste(a,'Age adjusted prevalence(%)'),main = paste(a,'Ageadjusted prevalence in 50 states'))
  lines(c(1:50),sort(illness$rate),type = 'h')
  axis(side = 1, labels=c(1:nrow(illness)), at=seq(from=1, to=nrow(illness),by=1),tck=0.1,cex=0.1)
  text(c(1:50),sort(illness$rate)+1,as.character(illness$state[order(illness$rate)]),srt=90,adj = 0,cex = 0.4)
  
}
