#!/bin/bash
# Skript erinevate verbide püüdmiseks (kõik korpused peale jututubade).
echo "Erinevad verbid" > tegusonad.txt
cat *kym \
|grep '.*V_ main.*' \
| sed 's/&auml;/ä/g' \
| sed 's/&Auml;/Ä/g' \
| sed 's/&ouml;/ö/g' \
| sed 's/&Ouml;/Ö/g' \
| sed 's/&uuml;/ü/g' \
| sed 's/&Uuml;/Ü/g' \
| sed 's/&otilde;/õ/g' \
| sed 's/&Otilde;/Õ/g' \
| sed 's/&scaron;/š/g' \
| sed 's/&Scaron;/Š/g' \
| sed 's/&zcaron;/ž/g' \
| sed 's/&Zcaron;/Ž/g' \
| sed 's/&ccaron/č/' \
| sed 's/^.*    //g' \
| sed 's/\+.*$//g' \
| sed 's/$/ma/g' \
| sed 's/_//g' \
| sort \
| uniq  >> tegusonad.txt

echo "
Erinevaid tegusõnu kokku" >> tegusonad.txt
cat *kym \
|grep '.*V_ main.*' \
| sed 's/&auml;/ä/g' \
| sed 's/&Auml;/Ä/g' \
| sed 's/&ouml;/ö/g' \
| sed 's/&Ouml;/Ö/g' \
| sed 's/&uuml;/ü/g' \
| sed 's/&Uuml;/Ü/g' \
| sed 's/&otilde;/õ/g' \
| sed 's/&Otilde;/Õ/g' \
| sed 's/&scaron;/š/g' \
| sed 's/&Scaron;/Š/g' \
| sed 's/&zcaron;/ž/g' \
| sed 's/&Zcaron;/Ž/g' \
| sed 's/&ccaron/č/' \
| sed 's/^.*    //g' \
| sed 's/\+.*$//g' \
| sed 's/$/ma/g' \
| sed 's/_//g' \
| sort \
| uniq \
| wc -l >> tegusonad.txt

