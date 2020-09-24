# Tips for wayland

## local application directory

.local/share/applications/

## Insync  

Add to insyc.application in Exec  
´´´
Exec=env QT_SCALE_FACTOR=0.7 insync start
´´´


## Firefox
Add to firefox.application in Exec  
´´´
Exec=env MOZ_ENABLE_WAYLAND=1 /usr/lib/firefox/firefox ....
´´´

## Chromium  
Add to chromium.application in Exec  
´´´
Exec=/usr/bin/chromium --use-gl=egl ....
´´´

Arch Link  
https://wiki.archlinux.org/index.php/Chromium  

