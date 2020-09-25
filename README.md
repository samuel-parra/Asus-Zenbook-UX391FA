# Asus-Zenbook-UX391FA

Laptop's Configuration


## Grub

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash resume=UUID=993e46f0-8de5-44ee-b724-9bf307d36ca4 pcie_aspm=force pci=noaer acpi_osi=Linux fbcon=font:TER16x32"  
GRUB_CMDLINE_LINUX="acpi_backlight=intel mem_sleep_default=deep intel_idle.max_cstate=4 idle=nomwait acpi=force"
```

## Bashrc
Windows manager detect correct size in HiDPI display  only for KDE Plasma  

```
export PLASMA_USE_QT_SCALING=1  
export QT_AUTO_SCREEN_SCALE_FACTOR=1  
export GDK_SCALE=2  
export GDK_DPI_SCALE=2  
```
  
on Manjaro use file /etc/environment   
  

## Correct size of icons on tray  

 add this var in execution command  
```  
 XDG_CURRENT_DESKTOP=Unity  
```  
 

## Enable video acceleration to electron applications  

Add modificators in Exec command  

```
--enable-accelerated-mjpeg-decode --enable-accelerated-video --ignore-gpu-blacklist --enable-native-gpu-memory-buffers --enable-gpu-rasterization  
``` 


## add scale to spotify or electron apps

in app file add in line Exec
```

--force-device-scale-factor=2
```

## sudoers
```
starman ALL=(ALL) NOPASSWD:ALL  
```


## alias for commands in bashrc
```  
alias ls='ls --color=auto'  
alias ll='ls -alF'  
alias la='ls -A'  
alias l='ls -CF'  
alias vi='vim'  
alias grep='grep --color=auto'  
```