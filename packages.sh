sudo apt install kazam
sudo apt install blender
sudo apt install xxdiff
sudo apt install meld
sudo apt install libfreetype6-dev
sudo apt install freecad
sudo apt install xpad
sudo apt install swig
sudp apt install markdown

# Third party
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt install spotify-client

# Mendeley
wget https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i mendeleydesktop-latest

# Everdo
wget http://release.everdo.net/1.1.8/everdo_1.1.8_amd64.deb
sudo dpkg -i everdo_1.1.8_amd64.deb
sudo apt install everdo_1.1.8_amd64 -f
