#!/bin/sh
exec > /tmp/scanwords.log 2>&1
set -x
echo "Script started at $(date)"
/usr/bin/python3 /opt/scanwords/scanwords.py
