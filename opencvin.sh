# sudo apt-get install libopencv-dev
sudo apt-get install build-essential gcc g++ gdb cmake cmake-gui pkg-config git qt5-default qtcreator automake -y
sudo apt-get install libvtk6-dev python python-dev python-numpy libgtk2.0-dev libavcodec-dev libavformat-dev libswscale-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev libgphoto2-dev libeigen3-dev libgflags-dev libgoogle-glog-dev libprotobuf-dev libboost-all-dev libhdf5-serial-dev protobuf-compiler doxygen libgtk-3-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libgstreamer1.0-0-dbg libavresample-dev libsuitesparse-dev libleptonica-dev libtesseract-dev libatlas-dev libopenblas-dev -y
sudo apt-get autoremove -y

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

git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git

cd opencv
mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_QT=ON -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules ..
#sudo cmake-gui
make clean
make 
sudo make install 
sudo ldconfig

cd ..
cd ..
sudo rm -rf opencv
sudo rm -rf opencv_contrib

