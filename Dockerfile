FROM debian:stable
MAINTAINER Lucia Chousal Rodriguez

RUN apt-get  -y
RUN apt-et install -y python-pip python-dev build-esential

WORKDIR /app

RUN pip install Flask

COPY contenedores/service.py /app

ENTRYPOINT python service.py
