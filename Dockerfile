FROM debian:stable
MAINTAINER Lucia Chousal Rodriguez

RUN apt-get update
RUN apt-get install -y python-pip python-dev build-esential

WORKDIR /app

RUN pip install flask

COPY contenedores/service.py /app

ENTRYPOINT ["python"]
CMD ["service.py"]
