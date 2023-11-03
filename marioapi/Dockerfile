FROM rocker/r-ver:4.2.2
RUN apt-get update && apt-get install -y  libcurl4-openssl-dev libicu-dev libsodium-dev libssl-dev make zlib1g-dev libgit2-dev && rm -rf /var/lib/apt/lists/*
RUN mkdir -p /usr/local/lib/R/etc/ /usr/lib/R/etc/
RUN echo "options(repos = 'https://packagemanager.posit.co/cran/__linux__/jammy/latest', download.file.method = 'libcurl', Ncpus = 4)" | tee /usr/local/lib/R/etc/Rprofile.site | tee /usr/lib/R/etc/Rprofile.site
RUN R -e 'install.packages("remotes")'
RUN Rscript -e 'remotes::install_version("rlang",upgrade="never", version = "1.0.6")'
RUN Rscript -e 'remotes::install_version("withr",upgrade="never", version = "2.5.0")'
RUN Rscript -e 'remotes::install_version("base64enc",upgrade="never", version = "0.1-3")'
RUN Rscript -e 'remotes::install_version("praise",upgrade="never", version = "1.0.0")'
RUN Rscript -e 'remotes::install_version("testthat",upgrade="never", version = "3.1.4")'
RUN Rscript -e 'remotes::install_version("shiny",upgrade="never", version = "1.7.2")'
RUN Rscript -e 'remotes::install_version("plumber",upgrade="never", version = "1.2.1")'
RUN Rscript -e 'remotes::install_version("ggplot2",upgrade="never", version = "3.3.6")'
RUN Rscript -e 'remotes::install_version("dplyr",upgrade="never", version = "1.0.10")'
RUN Rscript -e 'remotes::install_version("attempt",upgrade="never", version = "0.3.1")'
RUN Rscript -e 'remotes::install_version("future",upgrade="never", version = "1.33.0")'
RUN Rscript -e 'remotes::install_version("promises",upgrade="never", version = "1.2.1")'
RUN Rscript -e 'remotes::install_github("thinkr-open/mariobox@caf4c1f36a17456659f097ea04f192658b776f86")'
RUN mkdir /build_zone
ADD . /build_zone
WORKDIR /build_zone
RUN R -e 'remotes::install_local(upgrade="never")'
RUN rm -rf /build_zone
