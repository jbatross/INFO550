#rule for making report
report.html: join.csv Report.Rmd install
	Rscript -e "rmarkdown::render('Report.Rmd')" 

#rule for cleaning data
join.csv: install clean.R West_Nile.csv CA_Counties/CA_Counties.shp
	chmod +x clean.R && \
	Rscript clean.R

#rule for installing packages
install:
	chmod +x InstallPackages.R && \
	Rscript InstallPackages.R

#rule for help
.PHONY: help
help: 
	@echo "Report.html: Creates final report."
	@echo "install: Installs R packages needed for analysis."
	@echo "join.csv: dataset of the combined Geospatial information and case counts."