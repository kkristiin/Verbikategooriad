#/bin/bash
#Skript jututubade korpuse sõnade arvu kokkulugemiseks
#Esimene osa loeb kokku kõikide teiste korpuste sõnadearvu peale jututubade, teine loeb kokku jututubade korpuse sõnad. Skriptid eemaldavad kirjavahemärgid, lause- ja lõigumärgendid.

cat *mrf \
| grep -v -E '</s>|<s id=.*' \
| sed 's/.* Z .*//g' \
| sed 's/"<?.*//g' \
| sed 's/"<!.*//g' \
| sed 's/"<\..*//g' \
| sed 's/"<,.*//g' \
| awk 'NF' \
| wc -l
