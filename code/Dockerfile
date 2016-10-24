FROM ubuntu:16.04

RUN apt-get update && apt-get install -y less && apt-get install -y octave

VOLUME ["/source"]
WORKDIR /source
CMD octave
