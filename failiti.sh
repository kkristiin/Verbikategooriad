#!/bin/bash

#Skript loeb kokku kolm verbi grammatilise kategooria liiget failis, faili suuruse ja põhiverbide arvu
#Pole mõeldud jututubade korpuse lugemiseks, sest seal on märgendus veidi erinev ja ei vasta täpselt mustrile

rm failiti.txt #kustutab varasema versiooni, muidu lisataks nüüd kokku loetavad sagedused olemasoleva faili lõppu

for f in ./*.kym
do
echo $f >> failiti.txt

echo 'Faili suurus' >> failiti.txt
cat $f \
| grep -E '//' \
| wc -l >> failiti.txt

echo 'Põhiverbide arv' >> failiti.txt
cat $f \
| grep '//' | grep -E '_V_ main' \
| wc -l >> failiti.txt

echo 'Impersonaal' >> failiti.txt
cat $f \
| grep -E 'V_ main .*|V_ mod .*' | grep -E ' imps ' \
| wc -l >> failiti.txt

echo 'Infinitiiv ehk da-infinitiiv' >> failiti.txt
cat $f \
| grep ' inf' | wc -l >> failiti.txt

echo 'Olevik' >> failiti.txt
cat $f \
| grep -E 'V_ main .*|V_ mod .*' | grep ' pres ' | wc -l  >> failiti.txt

done
exit




