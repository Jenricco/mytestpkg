FROM rocker/verse:3.4.0

MAINTAINER Henry Schubert <h.schubert@fu-berlin.de>

COPY . /mytestpkg 

RUN . /etc/environment \

  && R -e "devtools::install('/mytestpkg', dep = TRUE)"

  && R -e "rmarkdown::render('/mytestpkg"