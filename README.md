# Asus-Zenbook-UX391FA

Laptop's Configuration


## Grub

```
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash resume=UUID=993e46f0-8de5-44ee-b724-9bf307d36ca4 pcie_aspm=force pci=noaer acpi_osi=Linux fbcon=font:TER16x32"  
GRUB_CMDLINE_LINUX="acpi_backlight=intel mem_sleep_default=deep intel_idle.max_cstate=4 idle=nomwait acpi=force"


# GRUB_CMDLINE_LINUX_DEFAULT="quiet splash apparmor=0 security=apparmor resume=UUID=2f86707e-515f-4faa-9f5a-5bb2c52ab0e9 udev.log_priority=3 intel_idle.max_cstate=4 pcie_aspm=force pci=noaer acpi_osi=Linux acpi_backlight=intel mem_sleep_default=deep idle=nomwait acpi=force dis_ucode_ldr fbcon=font:TER16x32"
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash apparmor=0 security=apparmor resume=UUID=2f86707e-515f-4faa-9f5a-5bb2c52ab0e9 udev.log_priority=3 intel_idle.max_cstate=4 pcie_aspm=force pci=noaer acpi_osi=Linux acpi_backlight=intel mem_sleep_default=deep idle=nomwait acpi=force fbcon=font:TER16x32"
#GRUB_CMDLINE_LINUX="i915.enable_guc=2 i915.enable_fbc=0 i915.enable_dc=2 i915.enable_dpcd_backlight=1 i915.modeset=1 nospectre_v1 nospectre_v2 mitigations=off"
GRUB_CMDLINE_LINUX="nospectre_v1 nospectre_v2 mitigations=off"

```  
acpi_osi=Linux  for detect power connection  
intel_idle.max_cstate=4 for glitch
mem_sleep_default=deep for deep sleep and less power comsuption



## Bashrc
Windows manager detect correct size in HiDPI display  only for KDE Plasma  

```
export PLASMA_USE_QT_SCALING=1  
export QT_AUTO_SCREEN_SCALE_FACTOR=1  
export GDK_SCALE=2  
export GDK_DPI_SCALE=2 / 0.5 / 1  
```
  
on Manjaro use file /etc/environment   
  

## Enable vapi  

add in enviroment  

```
LIBVA_DRIVER_NAME=iHD
VDPAU_DRIVER=va_gl
MESA_LOADER_DRIVER_OVERRIDE=iris   
```

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

## ASUS overheat  

change governor to powersave

```
sudo cpupower frequency-set -g  powersave  
```

## Console Font Size HiDPI

### Ubuntu/KDE Neon

edit /etc/default/console-setup and change  
```  
FONTFACE="TER"
FONTSIZE="16x32"
```  
after run  sudo update-initramfs -u and add in GRUB_CMDLINE_LINUX in  /etc/default/grub  
```  
fbcon=font:TER16x32  
```  
after run sudo update-grub  


