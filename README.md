# My Project
This repository is for INFO 550 and the final project. </br>
The dataset is based on mosquio data and West Nile Virus incidence in California by County over a 10 year period. </br>
The packages necessary for this analysis is as can be done by running the following `R` code </br>
```{r}
list.of.packages <- c(
  "table1",
  "dplyr",
  "tmap"
)
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)
invisible(lapply(list.of.packages,library,character.only=T))
rm(list.of.packages,new.packages) #Removes lists for cleanliness
```
# Exectue Analysis
To execute the analysis, from the project folder you can run
```
'Rscript -e "rmarkdown::render('report.Rmd')"
```
This will create a file called report.html output in your directory that contains the results.
