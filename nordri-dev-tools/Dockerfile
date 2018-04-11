FROM phusion/baseimage:0.10.0
MAINTAINER Fede Diaz nordri@gmail.com

## MAVEN
RUN apt-get update && \
    apt-get install -y --no-install-recommends wget vim curl git curl maven openjdk-8-jdk build-essential

## NODE-JS
# Installing nodejs
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && \
    apt-get install -y nodejs && \
    rm nodesource_setup.sh

# Some net tools
RUN apt-get update && \
    apt-get install -y --no-install-recommends dnsutils netcat-openbsd iputils-ping traceroute
     
# Cleaning the house
RUN apt-get clean && \
    apt-get autoclean && \
    rm -Rf /tmp/* && \
    rm -Rf /var/lib/apt/lists/*

  
