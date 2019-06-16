FROM ubuntu:18.04
LABEL MAINTAINER Fede Diaz nordri@gmail.com

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget \
    vim \
    git \
    curl \
    maven \
    python-pip \
    apache2-utils

# Some net tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    dnsutils \
    netcat-openbsd \
    iputils-ping \
    traceroute \
    iproute2
     
# Cleaning the house
RUN apt-get clean && \
    apt-get autoclean && \
    rm -Rf /tmp/* && \
    rm -Rf /var/lib/apt/lists/*

ENTRYPOINT [ "/bin/bash" ]  
