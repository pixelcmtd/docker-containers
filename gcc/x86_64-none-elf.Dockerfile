FROM ubuntu:latest

ARG BINUTILS="ftp://ftp.gnu.org/gnu/binutils/binutils-2.36.1.tar.xz"
ARG GCC="ftp://ftp.gnu.org/gnu/gcc/gcc-10.3.0/gcc-10.3.0.tar.xz"

RUN mkdir -p /usr/src/
COPY build.sh /usr/src/

RUN sh /usr/src/build.sh $BINUTILS $GCC x86_64-none-elf
