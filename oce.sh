# Opencascade
sudo apt install libfreetype6-dev

# Checkout and install
git clone https://github.com/tpaviot/oce
mkdir -p  build/0.18
cd build/0.18/  
cmake -DOCE_INSTALL_PREFIX:PATH=$HOME/install/oce/0.18 ../..
make -j 8
make
make install

# Set this in post-installation (.bashrc)
export CASROOT=$HOME/install/oce/0.18
export PATH=$CASROOT/bin:$PATH
export LD_LIBRARY_PATH=$CASROOT/lib:$LD_LIBRARY_PATH
