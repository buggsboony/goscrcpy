#!/bin/bash

#install stuff
what=${PWD##*/}   
extension=.sh
#peut être extension vide 
 
echo "killing running instances"
killall $what

echo "remove symbolic link from usr bin"
sudo rm /usr/bin/$what
echo "Clear directory ... /usr/share/goscrcpy/*"
sudo rm -rf /usr/share/goscrcpy/* #Clear directory
echo "done."

