FROM debian:stable

VOLUME [ "/jenkins-data" ]

RUN apt-get update && \
    apt-get install -y build-essential
