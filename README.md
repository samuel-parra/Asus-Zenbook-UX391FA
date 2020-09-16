# Asus-Zenbook-UX391FA
Laptop's Configuration



## Grub

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash resume=UUID=993e46f0-8de5-44ee-b724-9bf307d36ca4 pcie_aspm=force pci=noaer acpi_osi=Linux fbcon=font:TER16x32"  
GRUB_CMDLINE_LINUX="acpi_backlight=intel mem_sleep_default=deep intel_idle.max_cstate=4 idle=nomwait acpi=force"
```

## Bashrc
Windows manager detect correct size in HiDPI display  

export PLASMA_USE_QT_SCALING=1  
export QT_AUTO_SCREEN_SCALE_FACTOR=1  
export GDK_SCALE=2  
export GDK_DPI_SCALE=2  
  
on Manjaro use file /etc/environment   
  

## Correct size of icons on tray  

 add this var in execution command  

 XDG_CURRENT_DESKTOP=Unity

 # Enable video acceleration to electron applications

--enable-accelerated-mjpeg-decode --enable-accelerated-video --ignore-gpu-blacklist --enable-native-gpu-memory-buffers --enable-gpu-rasterization  
 

## Enable new session always in kde Plasma

System Settings > Startup and Shutdown > Desktop Session > On Login > Start with empty session  

## add scale to spotify or electron apps

in app file add in line Exec

--force-device-scale-factor=2

## sudoers

starman ALL=(ALL) NOPASSWD:ALL  

## disable file indexer in kde plasma

balooctl stop  
balooctl disable  


## extras
Advanced audio player  
tlp tlp-dwr  
Intel P-state and CPUfreq  
kwin maximize to new virtual desktop  

