FROM python:3.10.10-slim

ARG QUARTO_VERSION=1.3.151

WORKDIR /app

# Install system libraries
RUN apt-get update && apt-get install -y
RUN apt-get install -y \ 
  r-base \
  libcurl4-openssl-dev \
  libssl-dev \
  libxml2-dev \
  libfontconfig1-dev \
  libharfbuzz-dev \
  libfreetype6-dev \
  libjpeg62-turbo-dev \
  libpng-dev \
  libtiff5-dev \
  libgl1-mesa-dev \
  pandoc \
  curl \
  wget \
  && rm -rf /var/lib/apt/lists/*

# Download and install Quarto
RUN mkdir -p /opt/quarto/${QUARTO_VERSION}
RUN curl -o quarto.tar.gz -L \
    "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz"
RUN tar -zxvf quarto.tar.gz \
    -C "/opt/quarto/${QUARTO_VERSION}" \
    --strip-components=1
RUN rm quarto.tar.gz
RUN ln -s /opt/quarto/${QUARTO_VERSION}/bin/quarto /usr/local/bin/quarto
RUN quarto install tinytex

# Install R packages
RUN echo 'options(repos = c(REPO_NAME = "https://packagemanager.rstudio.com/all/latest"))' >> /etc/R/Rprofile.site
RUN R -e "install.packages(c('dplyr', 'ggplot2', 'rmarkdown'))"

# Install Python packages
COPY requirements.txt requirements.txt
RUN python -m pip install -r "requirements.txt"

# Copy docs
RUN mkdir -p ./docs
COPY _extensions /app/_extensions
COPY docs /app/docs
WORKDIR /app/docs

# Print versions
RUN quarto check
