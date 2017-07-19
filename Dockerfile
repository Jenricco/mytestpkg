FROM rocker/verse:3.4.0

MAINTAINER Henry Schubert <h.schubert@fu-berlin.de>

COPY . /mytestpkg 

RUN . /etc/environment \

  && R -vanilla "devtools::install('/mytestpkg', dep = TRUE)" \

  && R -vanilla "rmarkdown::render('/mytestpkg/Analysis_Test/Challenge.rmd)"