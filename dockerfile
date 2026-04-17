#FROM ubuntu:18.04


#RUN apt-get update && apt-get install -y

FROM debian:buster

# Install outdated packages with known vulnerabilities
RUN apt-get update && apt-get install -y \
    openssl \
    wget \
    curl \
 && rm -rf /var/lib/apt/lists/*
