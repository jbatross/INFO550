#rule for making report
<<<<<<< HEAD
report.html: join.csv Report.Rmd install
	Rscript -e "rmarkdown::render('Report.Rmd')" 

#rule for cleaning data
join.csv: install clean.R West_Nile.csv CA_Counties/CA_Counties.shp
	chmod +x clean.R && \
=======
report.html: data.csv Report.Rmd
	Rscript -e "rmarkdown::render('Report.Rmd')" 

#rule for cleaning data
join.csv: clean.R "West Nile.csv" CA_Counties/CA_Counties.shp
	chmod +x cleana.R && \
>>>>>>> 03617a01db4c637da4a2ab5cf76096affbd757d8
	Rscript clean.R

#rule for installing packages
install:
	chmod +x InstallPackages.R && \
	Rscript InstallPackages.R

#rule for help
.PHONY: help
help: 
<<<<<<< HEAD
	@echo "Report.html: Creates final report."
	@echo "install: Installs R packages needed for analysis."
	@echo "join.csv: dataset of the combined Geospatial information and case counts."
=======
	@echo "ReishusProjectRender.html: Generate final analysis report."
	@echo "install: Installed R packages needed for analysis."
	@echo "data.csv: Cleans raw dataset."
>>>>>>> 03617a01db4c637da4a2ab5cf76096affbd757d8
