FROM debian:stable
MAINTAINER Lucia Chousal Rodriguez

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

WORKDIR /app

RUN pip install Flask==0.10.1

COPY ./contenedores/service.py /app

ENTRYPOINT ["python"]
CMD ["service.py"]
