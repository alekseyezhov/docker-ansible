# This file is a template, and might need editing before it works on your project.
FROM debian:jessie

WORKDIR /app/ansible
RUN mkdir /app/ansible/ssh
RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    apt-get update && \
    apt-get install ansible git -y
