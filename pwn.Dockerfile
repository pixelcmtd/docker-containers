FROM ghcr.io/phusion/baseimage:resolute

ENV DEBIAN_FRONTEND=noninteractive HOME=/root

RUN apt update && apt upgrade -y -o Dpkg::Options::="--force-confold" && \
    install_clean unminimize && \
    yes | unminimize && \
    install_clean build-essential cmake clang clang-format llvm lldb gdb vim curl wget golang rustc bear man less xorg xdg-utils python3-pip pipx git file && \
    touch /.dockerenv && \
    NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

ENV PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
CMD ["/sbin/my_init", "--", "bash", "-l"]
