export DEBIAN_FRONTEND=noninteractive && \
apt update && \
apt upgrade -y && \
apt install -y build-essential libgmp3-dev libmpfr-dev libisl-dev \
               libmpc-dev texinfo bison curl flex && \
cd /usr/src/ && \
curl -Lo binutils.tar.xz "$1" && \
tar xJf binutils.tar.xz && \
rm -f binutils.tar.xz && \
chown -R root:root binutils-* && \
chmod -R o-w,g+w binutils-* && \
mkdir build-binutils && \
cd build-binutils && \
../binutils-*/configure --target=$3 --prefix=/usr --program-prefix=$3- --with-sysroot --disable-nls --disable-werror && \
make -j$(nproc) && \
make install && \
cd /usr/src/ && \
curl -Lo gcc.tar.xz "$2" && \
tar xJf gcc.tar.xz && \
rm -f gcc.tar.xz && \
chown -R root:root gcc-* && \
chmod -R o-w,g+w gcc-* && \
mkdir build-gcc && \
cd build-gcc && \
../gcc-*/configure --target=$3 --prefix=/usr --program-prefix=$3- --disable-nls --enable-languages=c,c++ --without-headers && \
make -j$(nproc) all-gcc && \
make -j$(nproc) all-target-libgcc && \
make install-gcc && \
make install-target-libgcc && \
cd /usr/src && \
rm -rf build.sh build-binutils binutils-* build-gcc gcc-* && \
apt remove -y build-essential gcc make libgmp3-dev libmpfr-dev libisl-dev \
              libmpc-dev texinfo bison curl flex && \
apt autoremove -y
