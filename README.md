# Asus-Zenbook-UX391FA
Laptop's Configuration



# Grub

GRUB_CMDLINE_LINUX_DEFAULT="quiet splash resume=UUID=993e46f0-8de5-44ee-b724-9bf307d36ca4 pcie_aspm=force pci=noaer acpi_osi=Linux dis_ucode_ldr fbcon=font:TER16x32"  
GRUB_CMDLINE_LINUX="acpi_backlight=vendor"  


# Bashrc
Windows manager detect correct size in HiDPI display  

export ELECTRON_FORCE_WINDOW_MENU_BAR=1  
export PLASMA_USE_QT_SCALING=1  
export GDK_SCALE=2  


# Enable raster for electron applications

--enable-accelerated-mjpeg-decode --enable-accelerated-video --ignore-gpu-blacklist --enable-native-gpu-memory-buffers --enable-gpu-rasterization
 