FROM maven:3.5.3-jdk-10
MAINTAINER Serfim TIC

# Install Python for AWS CLI
RUN add-apt-repository ppa:deadsnakes/ppa -y \
    && apt-get update \ 
    && apt-get install python3.6

# Install AWS CLI
RUN pip install awscli --ignore-installed six
