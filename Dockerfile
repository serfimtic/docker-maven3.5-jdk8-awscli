FROM maven:3.6-jdk-8
MAINTAINER Serfim TIC

# Install Python for AWS CLI
RUN apt-get update \ 
    && apt-get install python3.6

# Install AWS CLI
RUN pip install awscli --ignore-installed six
