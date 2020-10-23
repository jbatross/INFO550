library(dplyr)
library(sf)
library(tmap)

WN<-read.csv("West_Nile.csv")
CA<-read_sf("CA_Counties/CA_Counties.shp")

WN2<-WN%>%
  group_by(County)%>%
  summarise(total_cases=sum(Positive.Cases))
WN2$NAME<-WN2$County

WN3<-WN%>%
  group_by(County,Year)%>%
  summarise(total_cases=sum(Positive.Cases))
matches<-match(WN2$NAME,CA$NAME)
matches2<-unique(matches)
CA2<-CA[matches2,]

join<-right_join(CA2,WN2,by="NAME")
write.csv(x = join,file="join.csv")
