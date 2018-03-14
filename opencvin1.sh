#git clone https://github.com/opencv/opencv.git
#git clone https://github.com/opencv/opencv_contrib.git

mkdir ubuntua

mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE -D BUILD_SHARED_LIBS=OFF -D CMAKE_INSTALL_PREFIX=../ubuntua -D WITH_QT=ON -D OPENCV_EXTRA_MODULES_PATH=../opencv_contrib/modules ../opencv
#cmake-gui
make clean
make 
make install 

cd ..
rm -rf build
#rm -rf opencv
#rm -rf opencv_contrib

