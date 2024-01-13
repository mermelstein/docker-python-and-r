FROM python:3.12.1-slim-bullseye

# Install R and system dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    r-base \
    libffi7 \
    gfortran \
    liblapack-dev \
    libblas-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY . /app

WORKDIR /app
ENV PATH /app:$PATH

USER root

RUN chmod -R 777 .

CMD python -u main.py