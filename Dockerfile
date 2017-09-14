FROM centos:latest

MAINTAINER Raveendra Annamaneni<a.raveendra432@gmail.com>

ENV GCLOUD_SDK_VERSION 171.0.0

RUN ["echo","hello"]

RUN tee -a /etc/yum.repos.d/google-cloud-sdk.repo << EOM
[google-cloud-sdk]
name=Google Cloud SDK
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg
       https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM

# Install the Cloud SDK
RUN yum install google-cloud-sdk

ENV PATH $PATH:/google-cloud-sdk/bin

RUN ["echo","done"]