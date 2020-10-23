list.of.packages <- c(
  "dplyr",
  "sf",
  "table1",
  "tmap"
)
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
invisible(lapply(list.of.packages,library,character.only=T))
rm(list.of.packages,new.packages) #Removes lists for cleanliness