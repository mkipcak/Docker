FROM phusion/baseimage:0.10.0
MAINTAINER Fede Diaz nordri@gmail.com

ADD https://storage.googleapis.com/kubernetes-release/release/v1.6.4/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl
RUN apt-get update \
  && apt-get -y install bash-completion 

ADD bash_completion /root/.bash_completion
ADD bashrc /root/.bashrc

# Cleaning the house
RUN apt-get clean && \
    apt-get autoclean && \
    rm -Rf /tmp/* && \
    rm -Rf /var/lib/apt/lists/*

ENTRYPOINT [ "/bin/bash" ]  
