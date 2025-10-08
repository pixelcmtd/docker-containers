FROM ubuntu:rolling

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt upgrade -y && \
    apt install -y unminimize && \
    yes | unminimize && \
    apt install -y build-essential cmake clang clang-format llvm lldb nmap nikto wireshark openjdk-8-jdk openjdk-25-jdk gdb vim curl wget golang rustc bear man less xorg xdg-utils python3-pip pipx git && \
    touch /.dockerenv && \
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && \
    echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >> /root/.bashrc
