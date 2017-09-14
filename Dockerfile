FROM alpine:latest

MAINTAINER Raveendra Annamaneni<a.raveendra432@gmail.com>

RUN ["echo","hello"]

RUN apk curl bash python

RUN curl https://sdk.cloud.google.com | bash

ENV PATH $PATH:/google-cloud-sdk/bin

RUN ["echo","which python"]