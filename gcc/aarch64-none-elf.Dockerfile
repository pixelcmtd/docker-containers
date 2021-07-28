FROM ubuntu:latest

ARG BINUTILS="ftp://ftp.gnu.org/gnu/binutils/binutils-2.37.tar.xz"
ARG GCC="ftp://ftp.gnu.org/gnu/gcc/gcc-11.2.0/gcc-11.2.0.tar.xz"

RUN mkdir -p /usr/src/
COPY build.sh /usr/src/

RUN sh /usr/src/build.sh $BINUTILS $GCC aarch64-none-elf
