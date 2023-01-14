#!/bin/sh
echo 'Generating playlist from music/ogg files...'
cd /usr/share/ices/music/ogg && ls -d $PWD/* > /usr/share/ices/music/playlist.txt
echo 'music/playlist.txt created.'