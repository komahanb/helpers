# Install GCC compiler version 7.3.0 (Change the version numbers as
# needed)
mkdir -p $HOME/git/gcc/7.3.0
cd $HOME/git/gcc/7.3.0
git clone https://github.com/gcc-mirror/gcc src
cd src
git checkout -b gcc-7_3_0-release
contrib/download_prerequisites
cd ../
mkdir build && cd build
../src/configure -v --with-pkgversion='Ubuntu 5.4.0-6ubuntu1~16.04.9' \
--enable-languages=c,c++,fortran \
--prefix=$HOME/install/gcc/7.3.0 --program-suffix=-7.3.0 --enable-shared \
--enable-linker-build-id --libexecdir=$HOME/install/gcc/7.3.0/lib \
--enable-threads=posix --libdir=$HOME/install/gcc/7.3.0/lib \
--build=x86_64-linux-gnu \
--host=x86_64-linux-gnu \
--target=x86_64-linux-gnu --disable-multilib
make -j 8
make install

# Set the PATH and library path in .bashrc
export GCC_ROOT=$HOME/install/gcc/7.3.0
export PATH=$GCC_ROOT/bin:$PATH
export LD_LIBRARY_PATH=$GCC_ROOT/lib64:$LD_LIBRARY_PATH

