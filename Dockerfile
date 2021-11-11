FROM jupyter/r-notebook:python-3.9.7
MAINTAINER Alexander Tong <alexandertongdev@gmail.com>
LABEL version="0.0.2"
LABEL description="Base Docker image with python and R for experimentation"

#COPY . /tmp
#COPY "install_dependencies.sh" /tmp
#RUN cd /tmp && bash "install_dependencies.sh"

ADD requirements.txt .
ADD requirements.r .

# installing python libraries
RUN pip install -r requirements.txt

# installing r libraries
RUN Rscript requirements.r
