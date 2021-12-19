#!/bin/bash

#install stuff
what=${PWD##*/}   
extension=.sh

#config
configpath=~/.config/goscrcpy/
#peut être extension vide

echo "Set executable..."
chmod +x $what$extension
#echo "lien symbolique vers usr bin"
sudo ln -s "$PWD/$what$extension" /usr/bin/$what

#copy icon
echo "Create directory /usr/share/goscrcpy..."
sudo mkdir -p /usr/share/goscrcpy
echo "Copy icon .."
sudo cp smartphone-pngfind.com-blue-phone-icon-png-5193500.png /usr/share/goscrcpy/icon.png
echo "Your desktop file: "
mkdir -p "$configpath"
cp goscrcpy_gui.desktop_original  $configpath/goscrcpy_gui.desktop
xdg-open "$configpath/goscrcpy_gui.desktop"
echo "done."
