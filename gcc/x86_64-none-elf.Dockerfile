FROM chrissx/gcc-deps:10.2

ARG BINUTILS_VERSION=2.36.1
ARG GCC_VERSION=10.2.0

RUN sh /usr/src/build-binutils.sh $BINUTILS_VERSION x86_64-none-elf
RUN sh /usr/src/build-gcc.sh $GCC_VERSION x86_64-none-elf
