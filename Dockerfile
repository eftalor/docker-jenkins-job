FROM debian:stable

RUN apt-get update && \
    apt-get install -y build-essential ssh 
