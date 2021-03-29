FROM ubuntu:latest

RUN apt update
RUN apt upgrade -y
RUN apt install -y curl xz-utils
RUN { uname -a | grep x86 && \
        curl -Lo /root/armgcc.tar.xz 'https://developer.arm.com/-/media/Files/downloads/gnu-a/10.2-2020.11/binrel/gcc-arm-10.2-2020.11-x86_64-aarch64-none-elf.tar.xz?revision=79f65c42-1a1b-43f2-acb7-a795c8427085&la=en&hash=3BEE623628664E6E1736ABBE7CE5AD76B65B51EA' || \
        curl -Lo /root/armgcc.tar.xz 'https://developer.arm.com/-/media/Files/downloads/gnu-a/10.2-2020.11/binrel/gcc-arm-10.2-2020.11-aarch64-aarch64-none-elf.tar.xz?revision=9611f84a-41b8-4eae-9c30-045c830f5337&la=en&hash=109566BAD01B49B8BED6E60956DAB59ADFABAE62' ; } && \
        cd /root && \
        tar xvfJ armgcc.tar.xz && \
        rm -f armgcc.tar.xz
RUN echo 'PATH="$PATH:/root/gcc-arm-10.2-2020.11-x86_64-aarch64-none-elf/bin"' >> /root/.bashrc
RUN echo 'PATH="$PATH:/root/gcc-arm-10.2-2020.11-aarch64-aarch64-none-elf/bin"' >> /root/.bashrc
