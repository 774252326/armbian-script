sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install libssl-dev -y
sudo apt-get install libusb-1.0-0-dev pkg-config -y
sudo apt-get install libglfw3-dev -y

git clone https://github.com/IntelRealSense/librealsense.git

cd librealsense

sudo apt-get install qtcreator -y
sudo ./scripts/install_qt.sh

sudo cp ./config/99-realsense-libusb.rules /etc/udev/rules.d/
sudo udevadm control --reload-rules && udevadm trigger
./scripts/patch-uvcvideo-16.04.simple.sh



