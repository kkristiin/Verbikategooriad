#!/bin/bash
# Skript erinevate tegusõnade püüdmiseks jututubade korpusest.
echo "Erinevad verbid" > tegusonad.txt
cat *mrf \
| grep '.*V main.*' \
| sed 's/L.*//g' \
| sed 's/"//g' \
| sed 's/$/ma/g' \
| sed 's/ //g' \
| grep -v '.*_' \
| sort \
| uniq >> tegusonad.txt

echo "
Erinevaid tegusõnu kokku" >> tegusonad.txt
cat *mrf \
| grep '.*V main.*' \
| sed 's/L.*//g' \
| sed 's/"//g' \
| sed 's/$/ma/g' \
| sed 's/ //g' \
| grep -v '.*_' \
| sort \
| uniq \
| wc -l >> tegusonad.txt

