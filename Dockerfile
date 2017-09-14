FROM ubuntu:latest

MAINTAINER Raveendra Annamaneni<a.raveendra432@gmail.com>

ENV GCLOUD_SDK_VERSION 171.0.0

RUN ["echo","hello"]

# Create an environment variable for the correct distribution
ENV CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)"

# Add the Cloud SDK distribution URI as a package source
RUN echo "deb http://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Import the Google Cloud Platform public key
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

# Update the package list and install the Cloud SDK
RUN apt-get install google-cloud-sdk

ENV PATH $PATH:/google-cloud-sdk/bin

RUN ["echo","done"]