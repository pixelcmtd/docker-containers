FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt upgrade -y
RUN apt install -y build-essential libgmp3-dev libmpfr-dev libisl-dev \
                   libmpc-dev texinfo bison curl flex bzip2 patch

RUN mkdir -p /usr/src/
COPY *.sh /usr/src/
