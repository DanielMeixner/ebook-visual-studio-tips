#!/bin/bash
echo "apt-get update ..."
sudo apt-get update 

echo ...  install imagemagick ...
apt-get install imagemagick --assume-yes

echo ... start resizing all images...
for file in $(find ../images -name "*.png") ; do convert "$file" -resize 500x500 "$file" ; done

echo ... get git authors ...
authstring=$(git shortlog HEAD -s | awk '{print $2'} | tr '\n' ';')

echo ... overwrite titel file with new authors ...
sed -i "s/__AUTHLIST__/$authstring/g" title.txt