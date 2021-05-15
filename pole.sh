#!/bin/bash
#Skript pole-vormide leidmiseks

cat *kym \
| grep 'pol.*V.*main' > pole.txt

cat *kym \
| grep 'pol.*V.*main' \
| wc -l >> pole.txt

