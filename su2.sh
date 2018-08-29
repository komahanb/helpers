# SU2
git clone https://github.com/su2code/SU2.git su2
cd su2/
export CXXFLAGS="-o3" && ./preconfigure.py --prefix=$HOME/git/su2 --enable-mpi --enable-metis --enable-parmetis --enable-autodiff --enable-PY_WRAPPER
make -j 8 install

# Get the Test cases

# Get the Tutorials
git clone https://github.com/su2code/su2code.github.io Tutorials

# Post installation (add this to .bashrc)


#git clone https://github.com/su2code/TestCases.git
