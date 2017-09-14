FROM ubuntu:latest

MAINTAINER Raveendra Annamaneni<a.raveendra432@gmail.com>

RUN ["echo","hello"]

RUN apt-get install wget

RUN wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-171.0.0-linux-x86_64.tar.gz

RUN tar -xvf google-cloud-sdk-171.0.0-linux-x86_64.tar.gz

RUN ./google-cloud-sdk/install.sh

ENV PATH $PATH:/google-cloud-sdk/bin

RUN ["echo","done"]