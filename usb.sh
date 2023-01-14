#!/bin/bash
#$1=on/off
# https://github.com/mvp/uhubctl#raspberry-pi-3b
sudo uhubctl/uhubctl
sudo uhubctl/uhubctl  -a $1 -l 1-1   -p 2
sudo uhubctl/uhubctl

