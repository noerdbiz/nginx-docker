##
# knutole/nginx
#
# This creates an Ubuntu derived base image that installs the latest nginx and
# 

# Ubuntu 14.04 Trusty Tahyr
FROM ubuntu:trusty

MAINTAINER Knut Ole Sjøli <knutole@systemapic.com>

# Ensure the package repository is up to date
RUN apt-get update -y

# Install basic dependencies
RUN apt-get install -y \
    software-properties-common \
    python-software-properties \
    build-essential \
    wget \
    subversion \
    unzip \
    htop \
    fish \
    tar
RUN apt-get install -y libgcrypt11-dev zlib1g-dev

# Install NginX
ADD ./install-nginx.sh /tmp/
RUN sh /tmp/install-nginx.sh
