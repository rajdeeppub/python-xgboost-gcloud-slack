FROM centos:latest

MAINTAINER Raveendra Annamaneni<a.raveendra432@gmail.com>

RUN ["echo","hello"]

RUN tee -a /etc/yum.repos.d/google-cloud-sdk.repo 
RUN echo "[google-cloud-sdk]" >> /etc/yum.repos.d/google-cloud-sdk.repo 
RUN echo "name=Google Cloud SDK" >> /etc/yum.repos.d/google-cloud-sdk.repo
RUN echo "baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64" >> /etc/yum.repos.d/google-cloud-sdk.repo
RUN echo "enabled=1" >> /etc/yum.repos.d/google-cloud-sdk.repo
RUN echo "gpgcheck=1" >> /etc/yum.repos.d/google-cloud-sdk.repo
RUN echo "repo_gpgcheck=1" >> /etc/yum.repos.d/google-cloud-sdk.repo
RUN echo "gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg" >> /etc/yum.repos.d/google-cloud-sdk.repo
RUN echo "https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg" >> /etc/yum.repos.d/google-cloud-sdk.repo

# Install the Cloud SDK
RUN yum install google-cloud-sdk

ENV PATH $PATH:/google-cloud-sdk/bin

RUN ["echo","done"]