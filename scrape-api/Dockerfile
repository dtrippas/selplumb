# start from the rocker/r-ver:3.5.2 image
FROM rocker/r-ver:3.5.2

# ubuntu stuff to make sure the packages below can be installed
RUN apt-get update -qq && apt-get install -y \
      libssl-dev \
      libcurl4-openssl-dev \
      libxml2-dev

# install a few packages
RUN install2.r pacman plumber RSelenium tictoc curl xml2 XML openssl httr wdman binman

# copy everything from the current directory into the container
COPY / /

# open port 80 to traffic
EXPOSE 80

# when the container starts, start the main.R script
ENTRYPOINT ["Rscript", "main.R"]
