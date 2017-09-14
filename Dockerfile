FROM ubuntu:latest

MAINTAINER Raveendra Annamaneni<a.raveendra432@gmail.com>

RUN ["echo","hello"]
RUN ["/bin/bash", "-c", "curl -sSL https://sdk.cloud.google.com | bash"]

ENV PATH $PATH:/google-cloud-sdk/bin
