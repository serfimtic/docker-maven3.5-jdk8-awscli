FROM maven:3.6-jdk-8
MAINTAINER Serfim TIC

# Install Python for AWS CLI
RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
    
# Install AWS CLI
RUN pip install awscli --ignore-installed six
