FROM ubuntu:latest

MAINTAINER Raveendra Annamaneni<a.raveendra432@gmail.com>

RUN ["echo","hello"]

RUN curl https://sdk.cloud.google.com | sh

ENV PATH $PATH:/google-cloud-sdk/bin
