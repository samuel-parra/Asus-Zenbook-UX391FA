# KDE Plasma

## Enable new session always in kde Plasma

System Settings > Startup and Shutdown > Desktop Session > On Login > Start with empty session  


## disable file indexer in kde plasma

balooctl stop  
balooctl disable  


## extras
Advanced audio player  
tlp   
tlp-dwr  
Intel P-state and CPUfreq  
kwin maximize to new virtual desktop  

# Neon
## Extras  

Install Ubuntu Restricted Extras (Media Codecs):  
sudo apt install ubuntu-restricted-extras

## Packages

kubuntu-driver-manager  
kubuntu-restricted-extras  
gstreamer1.0-plugins-good  
gstreamer1.0-plugins-bad  
gstreamer1.0-plugins-ugly  
gstreamer1.0-plugins-base  
qtgstreamer-plugins-qt5  
build-essential  
fonts-roboto  
kate  
kfind
ttf-mscorefonts-installer  
network-manager-openvpn  
network-manager-fortisslvpn  
hunspell-es  
pavucontrol  
imwheel  
zenity  
kcalc
net-tools  
autocutsel  


## KWallet

Disable kwallet  

System Settings > KDE WALLET > unmark Enable the KDE wallet subsystem  


## Konsole sync

Sync buffers in copy on select in Konsole install autocutsel
```  
autocutsel -cutbuffer 0 -f -s PRIMARY  
autocutsel -f -s CLIPBOARD` 
```  

## install extra font

sudo apt install –reinstall ttf-mscorefonts-installer  
wget -q -O - https://gist.githubusercontent.com/Blastoise/72e10b8af5ca359772ee64b6dba33c91/raw/2d7ab3caa27faa61beca9fbf7d3aca6ce9a25916/clearType.sh | bash  
wget -q -O - https://gist.githubusercontent.com/Blastoise/b74e06f739610c4a867cf94b27637a56/raw/96926e732a38d3da860624114990121d71c08ea1/tahoma.sh | bash  
wget -q -O - https://gist.githubusercontent.com/Blastoise/64ba4acc55047a53b680c1b3072dd985/raw/6bdf69384da4783cc6dafcb51d281cb3ddcb7ca0/segoeUI.sh | bash  
wget -q -O - https://gist.githubusercontent.com/Blastoise/d959d3196fb3937b36969013d96740e0/raw/429d8882b7c34e5dbd7b9cbc9d0079de5bd9e3aa/otherFonts.sh | bash  
