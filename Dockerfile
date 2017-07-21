FROM rocker/verse:3.4.0

MAINTAINER Henry Schubert <h.schubert@fu-berlin.de>

COPY . /mytestpkg

RUN . /etc/environment \

  && apt-get update -y \
  && apt-get install -y libudunits2-dev libgdal-dev libgsl0-dev gdal-bin libgeos-dev libpng-dev libproj-dev \

  && R --vanilla "devtools::install('/mytestpkg', dep = TRUE)" \
  && R --vanilla "rmarkdown::render('/mytestpkg/Analysis_Test/Challenge.rmd)"
