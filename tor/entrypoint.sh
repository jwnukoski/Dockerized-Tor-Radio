#!/bin/sh
service nginx start

# Keep docker from exiting
tail -f /dev/null