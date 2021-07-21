FROM ubuntu:rolling

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt upgrade -y && \
    apt install -y build-essential gcc make g++ clang llvm lldb nmap nikto wireshark openjdk-8-jdk openjdk-16-jdk gdb vim curl wget golang rustc
