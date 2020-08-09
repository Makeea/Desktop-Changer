#!/bin/bash
# Background CHanger

# Downloads a random photo from https://source.unsplash.com/ visit site for flag settings

wget -O /var/tmp/wallpaper1.jpg https://source.unsplash.com/1920x1080/?gaming&orientation=landscape
wget -O /var/tmp/wallpaper2.jpg https://source.unsplash.com/1920x1080/?gaming&orientation=landscape

convert /var/tmp/wallpaper1.jpg /var/tmp/wallpaper2.jpg +append /var/tmp/wallpaper.jpg

#Example (vertical):
#convert /var/tmp/wallpaper1.jpg /var/tmp/wallpaper2.jpg -append /var/tmp/wallpaper.jpg

#Example (horizontal):
#convert /var/tmp/wallpaper1.jpg /var/tmp/wallpaper2.jpg +append /var/tmp/wallpaper.jpg


# Setting Background Picture after merging 
gsettings set org.gnome.desktop.background picture-uri file:///var/tmp/wallpaper.jpg 
gsettings set org.gnome.desktop.background picture-options 'spanned'

# this will set the photo to span to both screens
# gsettings set org.gnome.desktop.background picture-options 'spanned'

# default options for wallpapers can be set via the command line:
# gsettings set org.gnome.desktop.background picture-options 'none'
# gsettings set org.gnome.desktop.background picture-options 'wallpaper'
# gsettings set org.gnome.desktop.background picture-options 'centered'
# gsettings set org.gnome.desktop.background picture-options 'scaled'
# gsettings set org.gnome.desktop.background picture-options 'stretched'
# gsettings set org.gnome.desktop.background picture-options 'zoom'
# gsettings set org.gnome.desktop.background picture-options 'spanned'

#To reset back to the default:
#gsettings reset org.gnome.desktop.background picture-options