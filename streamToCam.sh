#!/bin/bash
# this one belongs to your computer and connect to pi
nice -n 19 arecord --format S16_LE --rate 44100 -V mono -c1  | ssh -C pi@cam.local  aplay --device plughw:UACDemoV10


