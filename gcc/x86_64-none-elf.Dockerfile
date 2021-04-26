FROM ubuntu:latest

ARG BINUTILS_VERSION=2.36.1
ARG GCC_VERSION=10.3.0

RUN mkdir -p /usr/src/
COPY build.sh /usr/src/

RUN sh /usr/src/build.sh $BINUTILS_VERSION $GCC_VERSION x86_64-none-elf
