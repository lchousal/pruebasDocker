FROM debian:stable
MAINTAINER Lucia Chousal Rodriguez

RUN apt-get update
RUN apt-get install -y -q build-essential python-gdal python-simplejson
RUN apt-get install -y python python-pip wget
RUN apt-get install -y python-dev

WORKDIR /app

RUN pip install Flask

COPY contenedores/service.py /app

ENTRYPOINT ["python"]
CMD ["service.py"]
