#rule for making report
report.html: data.csv Report.Rmd
	Rscript -e "rmarkdown::render('Report.Rmd')" 

#rule for cleaning data
join.csv: clean.R "West Nile.csv" CA_Counties/CA_Counties.shp
	chmod +x cleana.R && \
	Rscript clean.R

#rule for installing packages
install:
	chmod +x InstallPackages.R && \
	Rscript InstallPackages.R

#rule for help
.PHONY: help
help: 
	@echo "ReishusProjectRender.html: Generate final analysis report."
	@echo "install: Installed R packages needed for analysis."
	@echo "data.csv: Cleans raw dataset."