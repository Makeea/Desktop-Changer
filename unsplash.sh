#!/bin/bash
# Background Changer

wget -O /var/tmp/wallpaper1.jpg https://source.unsplash.com/1920x1080/?gaming&orientation=landscape
wget -O /var/tmp/wallpaper2.jpg https://source.unsplash.com/1920x1080/?gaming&orientation=landscape

convert /var/tmp/wallpaper1.jpg /var/tmp/wallpaper2.jpg +append /var/tmp/wallpaper.jpg

gsettings set org.gnome.desktop.background picture-uri file:///var/tmp/wallpaper.jpg 
gsettings set org.gnome.desktop.background picture-options 'spanned'