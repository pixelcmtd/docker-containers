FROM ubuntu:rolling

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt upgrade -y && \
    apt install -y build-essential clang llvm lld lldb
