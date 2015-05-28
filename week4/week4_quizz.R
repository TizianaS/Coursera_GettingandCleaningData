data<-read.csv("getdata-data-ss06hid.csv")
titles<-tolower(names(data))
splititles<-strsplit(titles,"wgtp")
ans1<-splititles[[123]]
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
download.file(fileUrl,destfile="getdataGDP.csv",method="curl")
data2<-read.csv("getdataGDP.csv",skip=4)
gdp<-data2[1:190,5]
gsubgdp<-gsub(",","",gdp)
gsubgdpnum<-as.numeric(gsubgdp)
ans2<-mean(gsubgdpnum)
countryNames<-as.character(data2[1:190,4])
ans3<-length(grep("^United",countryNames))
fileUrl2<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv "
download.file(fileUrl2,destfile="getdataFEDSTAT.csv",method="curl")
data3<-read.csv("getdataFEDSTAT.csv")
FiscalYear<-as.character(data3$Special.Notes)
ans4<-length(grep("^Fiscal year end: June",FiscalYear))
library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn) 
dates2012<-sampleTimes[grep("^2012",sampleTimes)]
ans5a<-length(grep("^2012",sampleTimes))
dates<-as.Date(dates2012,"%Y%m%d")
days<-weekdays(dates)
ans5b<-length(grep("Lundi",days))