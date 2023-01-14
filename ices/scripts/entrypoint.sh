#!/bin/sh
/usr/share/ices/scripts/process-music.sh
/usr/share/ices/scripts/generate-playlist.sh

echo 'Launching ices2 with /usr/share/ices/ices.xml...'
ices2 /usr/share/ices/ices.xml