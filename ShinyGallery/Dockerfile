FROM rocker/r-ver 

RUN R -e "install.packages(c('shiny'))"

COPY . /usr/local/src

WORKDIR /usr/local/src

CMD ["Rscript","app.R"]