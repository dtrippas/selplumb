# start from the rocker/r-ver:3.5.2 image
FROM rocker/tidyverse

# install a few packages 
RUN install2.r pacman plumber RSelenium tictoc

# copy everything from the current directory into the container
COPY / /

# open port 80 to traffic
EXPOSE 80

# when the container starts, start the main.R script
ENTRYPOINT ["Rscript", "main.R"]
