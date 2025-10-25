# SU2
git clone https://github.com/su2code/SU2.git su2
cd su2/
export CXXFLAGS="-O3" && ./preconfigure.py --prefix=$HOME/git/su2 --enable-mpi --enable-parmetis --enable-autodiff --enable-PY_WRAPPER
make -j 8 install

# Get the Tutorials
git clone https://github.com/su2code/su2code.github.io Tutorials

# Get the Test cases
cd ../
git clone https://github.com/su2code/TestCases.git
cd su2
cp -R ../TestCases/* ./TestCases/

# Put this to bashrc
export SU2_RUN=$HOME/git/su2/bin
export SU2_HOME=$HOME/git/su2
export PATH=$PATH:$SU2_RUN
export PYTHONPATH=$PYTHONPATH:$SU2_RUN
