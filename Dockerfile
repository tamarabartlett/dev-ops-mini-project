FROM ubuntu:latest
MAINTAINER Tamara Bartlett

COPY src /usr/local/bin/src/
WORKDIR /usr/local/bin/src
CMD ls

RUN apt-get update
RUN apt-get install -y sudo curl git
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

EXPOSE 8080
CMD node web_server.js

RUN echo "TEST"