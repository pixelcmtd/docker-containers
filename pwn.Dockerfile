FROM ubuntu:rolling

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt upgrade -y && \
    apt install -y unminimize && \
    yes | unminimize && \
    apt install -y build-essential gcc make cmake g++ clang clang-format llvm lldb nmap nikto wireshark openjdk-8-jdk openjdk-21-jdk gdb vim curl wget golang rustc bear man less xorg xdg-utils python3-pip pipx git unminimize
