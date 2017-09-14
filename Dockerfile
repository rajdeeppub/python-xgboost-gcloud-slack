FROM ubuntu:latest

MAINTAINER Raveendra Annamaneni<a.raveendra432@gmail.com>

RUN ["echo","hello"]

RUN bash

RUN curl https://sdk.cloud.google.com | bash

ENV PATH $PATH:/google-cloud-sdk/bin
