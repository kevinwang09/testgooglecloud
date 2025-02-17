FROM bioconductor/devel_core2:20190919

MAINTAINER kevin.wang@sydney.edu.au

## R package installation scripts
ADD install.R /home/

## Setup folder structure
ADD docker_setup.sh /home/




## Set up data and teaching materials
RUN sh /home/docker_setup.sh

## Install all R packages
RUN R -f /home/install.R
