#!/bin/sh
chown debian-tor /var/lib/tor/icecast && chmod 700 /var/lib/tor/icecast
service nginx start
service tor start
cat /var/lib/tor/icecast/hostname

# Keep docker from exiting
tail -f /dev/null
