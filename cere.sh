git clone https://ceres-solver.googlesource.com/ceres-solver
cd ceres-solver
mkdir build 
cd build
cmake ..
make 
make test 
sudo make install
sudo ldconfig
cd ..
cd ..

sudo rm -rf ceres-solver
