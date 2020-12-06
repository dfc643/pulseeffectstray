#!/bin/bash

kill -9 $(ps -ef | grep "python3.*pulseeffectstray" | head -n1 | awk '{print $2}')
rm -f /usr/local/bin/pulseeffectstray
rm -f /usr/share/pixmaps/pulseeffectstray.svg
rm -f /usr/share/applications/pulseeffectstray.desktop

echo "卸载完成"
