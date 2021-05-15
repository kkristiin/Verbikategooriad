#!/bin/bash

#Skript loeb kokku kolm verbi grammatilise kategooria liiget failis, faili suuruse ja põhiverbide arvu jututubade korpuses

rm failiti.txt #kustutab varasema versiooni, muidu lisataks nüüd kokku loetavad sagedused olemasoleva faili lõppu

for f in ./*.mrf
do
echo $f >> failiti.txt

echo 'Faili suurus' >> failiti.txt
cat $f \
| grep -v -E '</s>|<s id=.*' \
| sed 's/.* Z .*//g' \
| sed 's/"<?.*//g' \
| sed 's/"<!.*//g' \
| sed 's/"<\..*//g' \
| sed 's/"<,.*//g' \
| awk 'NF' \
| wc -l >> failiti.txt

echo 'Põhiverbide arv' >> failiti.txt
cat $f \
| grep 'V main' \
| wc -l >> failiti.txt

echo 'Impersonaal' >> failiti.txt
cat $f \
| grep -E 'V main .*|V mod .*' | grep -E ' imps ' \
| wc -l >> failiti.txt

echo 'Infinitiiv ehk da-infinitiiv' >> failiti.txt
cat $f \
| grep ' inf' | wc -l >> failiti.txt

echo 'Olevik' >> failiti.txt
cat $f \
| grep -E 'V main .*|V mod .*' | grep ' pres ' | wc -l  >> failiti.txt

done
exit

