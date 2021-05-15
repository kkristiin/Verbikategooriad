#!/bin/bash
#Skript mineviku partitsiipide arvu saamiseks kym-korpustest

echo "Mineviku partitsiibid" > mp.txt
cat *kym \
| grep '.*nud\|.*tud\|.*dud' \
| grep 'A.*pos' \
| wc -l >> mp.txt


| grep '.*nud\|.*tud\|.*dud' | grep 'A.*pos' | wc -l