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

