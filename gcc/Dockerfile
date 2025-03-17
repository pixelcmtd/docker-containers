FROM ubuntu:latest

ARG BINUTILS="ftp://ftp.gnu.org/gnu/binutils/binutils-2.44.tar.xz"
ARG GCC="ftp://ftp.gnu.org/gnu/gcc/gcc-11.5.0/gcc-11.5.0.tar.xz"
ARG TARGET=aarch64-none-elf

RUN mkdir -p /usr/src/
COPY build.sh /usr/src/

RUN sh /usr/src/build.sh $BINUTILS $GCC $TARGET
