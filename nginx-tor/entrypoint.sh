#!/bin/sh
service nginx start
service tor start
cat /var/lib/tor/icecast/hostname

# Keep docker from exiting
tail -f /dev/null