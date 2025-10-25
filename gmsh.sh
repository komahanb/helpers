# GMSH
git clone https://gitlab.onelab.info/gmsh/gmsh
cd gmsh/
git checkout gmsh_4_0_0
mkdir build
cd build/
cmake -DCMAKE_INSTALL_PREFIX=$HOME/install/gmsh/4.0.0 ..
make -j 8
#make clean
make install

# Post installation (add this to .bashrc)
export GMSH_ROOT=$HOME/install/gmsh/4.0.0
export PATH=$GMSH_ROOT/bin:$PATH
export LD_LIBRARY_PATH=$GMSH_ROOT/lib/:$LD_LIBRARY_PATH
