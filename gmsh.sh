# GMSH
git clone https://gitlab.onelab.info/gmsh/gmsh
git checkout gmsh_3_0_6
cd gmsh/
mkdir build
cd build/
cmake -DCMAKE_INSTALL_PREFIX=$HOME/install/gmsh/3.0.6 ..
make -j 8
make clean
make install

# Post installation (add this to .bashrc)
export GMSH_ROOT=$HOME/install/gmsh/3.0.6
export PATH=$GMSH_ROOT/bin:$PATH
export LD_LIBRARY_PATH=$GMSH_ROOT/lib/:$LD_LIBRARY_PATH
