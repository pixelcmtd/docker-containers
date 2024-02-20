FROM ubuntu:rolling

ENV DEBIAN_FRONTEND=noninteractive

RUN yes | unminimize && \
    apt update && \
    apt upgrade -y && \
    apt install -y build-essential gcc make g++ clang clang-format llvm lldb nmap nikto wireshark openjdk-8-jdk openjdk-22-jdk gdb vim curl wget golang rustc bear man less xorg xdg-utils python3-pip git
