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
build-essential  
fonts-roboto  
kate  
kfind  
kubuntu-restricted-extras-67  
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
