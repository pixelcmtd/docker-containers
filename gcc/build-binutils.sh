cd /usr/src/ && \
curl -LO ftp://ftp.gnu.org/gnu/binutils/binutils-$1.tar.gz && \
tar zxf binutils-$1.tar.gz && \
rm -f binutils-$1.tar.gz && \
chown -R root:root binutils-$1 && \
chmod -R o-w,g+w binutils-$1 && \
mkdir build-binutils && \
cd build-binutils && \
../binutils-$1/configure --target=$2 --prefix=/usr --program-prefix=$2- --with-sysroot --disable-nls --disable-werror && \
make -j$(nproc) && \
make install && \
rm -rf build-binutils.sh build-binutils binutils-$1
