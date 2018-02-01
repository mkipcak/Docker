FROM ubuntu:16.04
MAINTAINER Fede Diaz nordri@gmail.com

## MAVEN
RUN apt-get update && \
    apt-get install wget -y vim curl git curl maven openjdk-8-jdk

## NODE-JS
RUN apt-get update && \
    apt-get install -y git curl vim build-essential

# Installing nodejs
RUN curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && \
    apt-get install -y nodejs && \
    rm nodesource_setup.sh

# Some net tools
RUN apt-get update && \
    apt-get install -y dnsutils netcat-openbsd iputils-ping
     
