export DEBIAN_FRONTEND=noninteractive && \
apt update && \
apt upgrade -y && \
apt install -y build-essential libgmp3-dev libmpfr-dev libisl-dev \
               libmpc-dev texinfo bison curl flex && \
cd /usr/src/ && \
curl -LO ftp://ftp.gnu.org/gnu/binutils/binutils-$1.tar.gz && \
tar xzf binutils-$1.tar.gz && \
rm -f binutils-$1.tar.gz && \
chown -R root:root binutils-$1 && \
chmod -R o-w,g+w binutils-$1 && \
mkdir build-binutils && \
cd build-binutils && \
../binutils-$1/configure --target=$3 --prefix=/usr --program-prefix=$3- --with-sysroot --disable-nls --disable-werror && \
make -j$(nproc) && \
make install && \
cd /usr/src/ && \
curl -LO ftp://ftp.gnu.org/gnu/gcc/gcc-$2/gcc-$2.tar.gz && \
tar xzf gcc-$2.tar.gz && \
rm -f gcc-$2.tar.gz && \
chown -R root:root gcc-$2 && \
chmod -R o-w,g+w gcc-$2 && \
mkdir build-gcc && \
cd build-gcc && \
../gcc-$2/configure --target=$3 --prefix=/usr --program-prefix=$3- --disable-nls --enable-languages=c,c++ --without-headers && \
make -j$(nproc) all-gcc && \
make -j$(nproc) all-target-libgcc && \
make install-gcc && \
make install-target-libgcc && \
cd /usr/src && \
rm -rf build.sh build-binutils binutils-$1 build-gcc gcc-$2 && \
apt remove -y build-essential gcc make libgmp3-dev libmpfr-dev libisl-dev \
              libmpc-dev texinfo bison curl flex
