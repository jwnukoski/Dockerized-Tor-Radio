#!/bin/sh
# Cleanup staging
rm -rf /usr/share/ices/music/staging/*

# Copying music into staging without directories
find /usr/share/ices/music/dump -type f -execdir cp -v "{}" /usr/share/ices/music/staging ";"

# Normalize music in staging
normalize-audio -bv /usr/share/ices/music/staging/*

# Convert music to ogg format
dir2ogg -rv /usr/share/ices/music/staging/* --delete-input

# Move anyfiles out of music/staging into music/ogg
mv /usr/share/ices/music/staging/*.ogg /usr/share/ices/music/ogg/

# Cleanup staging
rm -rf /usr/share/ices/music/staging/*