
#install https://github.com/iridium77/htpdate
git clone https://github.com/iridium77/htpdate
cd htpdate
make
sudo make install
sudo htpdate -t -s www.baidu.com www.google.com
cd ..
sudo rm -rf htpdate

sudo dpkg-reconfigure tzdata

# set run on boot
# sudo leafpad /etc/rc.local
# add 'sudo htpdate -t -s www.baidu.com www.google.com' before 'exit 0' 
