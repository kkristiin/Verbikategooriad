#!/bin/bash
#Skript jututubade pole-vormide leidmiseks-lugemiseks
cat *mrf \
| grep 'pol.*' -A 1 \
| grep 'V.*main.*' > jututoad-pole.txt

cat *mrf \
| grep 'pol.*' -A 1 \
| grep 'V.*main.*' \
| wc -l >> jututoad-pole.txt
