wget http://download.opensuse.org/repositories/home:colomboem/xUbuntu_16.04/Release.key
sudo apt-key add - < Release.key  
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/colomboem/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/dukto.list"
sudo apt-get update
sudo apt-get install dukto
sudo rm -rf ./Release.key
sudo rm -rf /etc/apt/sources.list.d/dukto.list
