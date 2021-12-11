FROM jupyter/r-notebook:python-3.9.7
MAINTAINER Alexander Tong <alexandertongdev@gmail.com>
LABEL version="0.1.0"
LABEL description="Base Docker image with python and R for experimentation"

#COPY . /tmp
#COPY "install_dependencies.sh" /tmp
#RUN cd /tmp && bash "install_dependencies.sh"

USER root

RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
    # TODO: check if these are needed and describe
    libssl-dev \
    libgmp3-dev \
    build-essential \
    libv8-dev \
    libcurl4-openssl-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER ${NB_UID}


# installing r libraries
ADD requirements.r .
RUN Rscript requirements.r

ADD requirements.txt .
# installing python libraries
RUN pip install -r requirements.txt

