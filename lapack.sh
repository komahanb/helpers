#!/usr/bin/env bash

git clone https://github.com/Reference-LAPACK/lapack.git
cd lapack
mkdir build && cd build

cmake \
  -DCMAKE_INSTALL_PREFIX=$HOME/install/lapack \
  -DCMAKE_BUILD_TYPE=Release \
  -DBUILD_SHARED_LIBS=ON \
  -DCMAKE_Fortran_COMPILER=gfortran \
  -DCMAKE_C_COMPILER=gcc \
  -DCMAKE_CXX_COMPILER=g++ \
  -DLAPACKE=ON \
  ..

make -j 16
make install

TARGET="$HOME/.bashrc"

echo 'export LAPACK_BLAS_ROOT=$HOME/install/lapack' >> "$TARGET"
echo 'export PATH=$LAPACK_BLAS_ROOT/bin:$PATH' >> "$TARGET"
echo 'export LD_LIBRARY_PATH=$LAPACK_BLAS_ROOT/lib:$LD_LIBRARY_PATH' >> "$TARGET"
