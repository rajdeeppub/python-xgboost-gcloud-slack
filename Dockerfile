FROM ubuntu:latest

MAINTAINER Raveendra Annamaneni<a.raveendra432@gmail.com>

RUN curl -sSL https://sdk.cloud.google.com | bash

ENV PATH $PATH:/google-cloud-sdk/bin
