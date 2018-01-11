FROM debian:stable
MAINTAINER Lucia Chousal Rodriguez

RUN apt-get update -y
RUN apt-get install -y \
    libssl-dev \
    libffi-dev \
    python3 \
    python3-dev \
    python3-pip \
    git \
    && apt-get clean

WORKDIR /app

RUN pip3 install flask

COPY contenedores/service.py /app

ENTRYPOINT ["python3"]
CMD ["service.py"]
