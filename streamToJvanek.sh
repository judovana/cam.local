#!/bin/bash
#arecord --device=hw:1,0  -f dat | ssh -C jvanek@jvanek.local  aplay -f dat
#arecord --device=hw:1,0  -f dat | ssh -C jvanek@jvanek.local  cat
arecord --device=hw:1,0 --format S16_LE --rate 44100 -V mono -c1  | ssh -C jvanek@jvanek.local  aplay


