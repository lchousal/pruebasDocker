FROM debian:stable
MAINTAINER Lucia Chousal Rodriguez

RUN apt-get
RUN apt-get install -y python-pip python-dev build-essential

WORKDIR /app

RUN pip install Flask

COPY contenedores/service.py /app

ENTRYPOINT python service.py
