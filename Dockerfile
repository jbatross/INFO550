FROM rocker/geospatial

# install R packages
RUN Rscript -e "install.packages('table1')"

# make a project directory in the container
RUN mkdir /project

# copy contents of local folder to project folder in container
COPY ./ /project/

# make R scripts executable
RUN chmod +x /project/*.R

# make container entry point bash
CMD make -C project report.html