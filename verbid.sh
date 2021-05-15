#!/bin/bash
# Skript verbianalüüsiga sõnade informatsiooni kogumiseks. Oluline käivitada samas kaustas, kus on vaadeldavad failid.
echo "Verbianalüüsiga sõnu kokku" > verbiinfo.txt
cat *1txt \
| grep 'V.*' \
| wc -l >> verbiinfo.txt

echo "
Põhiverbe kokku" >> verbiinfo.txt
cat *1txt \
| grep 'V main.*'\
| wc -l  >> verbiinfo.txt

echo "
Abiverbe kokku" >> verbiinfo.txt
cat *1txt \
| grep 'V aux.*'\
| wc -l  >> verbiinfo.txt

echo "
Modaalverbe kokku" >> verbiinfo.txt
cat *1txt \
| grep 'V mod.*'\
| wc -l  >> verbiinfo.txt

echo "
KÕNEVIIS" >> verbiinfo.txt
echo "Kindel" >> verbiinfo.txt
cat *1txt \
| grep 'V.* indic' \
| wc -l  >> verbiinfo.txt

echo "
Tingiv" >> verbiinfo.txt
cat *1txt \
| grep 'V.* cond' \
| wc -l  >> verbiinfo.txt

echo "
Käskiv" >> verbiinfo.txt
cat *1txt \
| grep 'V.* imper' \
| wc -l  >> verbiinfo.txt

echo "
Kaudne" >> verbiinfo.txt
cat *1txt \
| grep 'V.* quot' \
| wc -l  >> verbiinfo.txt

echo "
AEG"  >> verbiinfo.txt
echo "Olevik" >> verbiinfo.txt
cat *1txt \
| grep -E 'V main .*|V mod .*' \
| grep ' pres ' \
| wc -l  >> verbiinfo.txt

echo "
Lihtminevik" >> verbiinfo.txt
cat *1txt \
| grep -E 'V main .*|V mod .*' \
| grep ' impf ' \
| wc -l  >> verbiinfo.txt

echo "
Täisminevik" >> verbiinfo.txt
cat *1txt \
| grep -E 'V aux ' \
| grep ' indic pres ' \
| wc -l  >> verbiinfo.txt

echo "
Enneminevik" >> verbiinfo.txt
cat *1txt \
| grep -E 'V aux ' \
| grep 'indic impf ' \
| wc -l >> verbiinfo.txt

echo "
Üldminevik" >> verbiinfo.txt
cat *1txt \
| grep -E 'V aux ' \
| grep -E 'quot pres|cond pres' \
| wc -l >> verbiinfo.txt

echo "
PÖÖRE EHK ARV JA ISIK" >> verbiinfo.txt
echo "
ARV" >> verbiinfo.txt
echo "Ainsust ehk singulare kokku" >> verbiinfo.txt
cat *1txt \
| grep '.*V.* sg .*' \
| wc -l  >> verbiinfo.txt

echo "
Mitmust ehk pluurale kokku" >> verbiinfo.txt
cat *1txt \
| grep '.*V.* pl .*' \
| wc -l  >> verbiinfo.txt

echo "
ISIK" >> verbiinfo.txt
echo "Ainsuse 1. pööret kokku" >> verbiinfo.txt
cat *1txt \
| grep '.*V.* ps1 sg.*' \
| wc -l  >> verbiinfo.txt

echo "
Ainsuse 2. pööret kokku" >> verbiinfo.txt
cat *1txt \
| grep '.*V.* ps2 sg.*' \
| wc -l  >> verbiinfo.txt

echo "
Ainsuse 3. pööret kokku" >> verbiinfo.txt
cat *1txt \
| grep '.*V.* ps3 sg.*' \
| wc -l  >> verbiinfo.txt

echo "
Mitmuse 1. pööret kokku" >> verbiinfo.txt
cat *1txt \
| grep '.*V.* ps1 pl.*' \
| wc -l  >> verbiinfo.txt

echo "
Mitmuse 2. pööret kokku" >> verbiinfo.txt
cat *1txt \
| grep '.*V.* ps2 pl.*' \
| wc -l  >> verbiinfo.txt

echo "
Mitmuse 3. pööret kokku" >> verbiinfo.txt
cat *1txt \
| grep '.*V.* ps3 pl.*' \
| wc -l  >> verbiinfo.txt

echo "
TEGUMOOD" >> verbiinfo.txt
echo "Isikuline" >> verbiinfo.txt
cat *1txt \
| grep -E 'V main .*|V mod .*' \
| grep -E ' ps ' \
| wc -l >> verbiinfo.txt

echo "
Umbisikuline" >> verbiinfo.txt
cat *1txt \
| grep -E 'V main .*|V mod .*' \
| grep -E ' imps ' \
| wc -l >> verbiinfo.txt

echo "
KÕNELIIK" >> verbiinfo.txt
echo "Jaatav" >> verbiinfo.txt
cat *1txt \
| grep 'V .*' \
| grep 'af' \
| wc -l >> verbiinfo.txt

echo "
Eitav" >> verbiinfo.txt
cat *1txt \
| grep 'V aux.*' \
| grep ' neg' \
| wc -l >> verbiinfo.txt

echo "
Käsitsi lisatud. Teise skriptiga saadud pole-vormide arv:" >> verbiinfo.txt

echo "
Käsitsi lisatud. Eitust kokku:" >> verbiinfo.txt

echo "
INFINITIIVID" >> verbiinfo.txt
echo "Infinitiiv ehk da-infinitiiv" >> verbiinfo.txt
cat *1txt \
| grep ' inf' \
| wc -l >> verbiinfo.txt

echo "
SUPIINID" >> verbiinfo.txt
echo "Supiin ehk ma-infinitiiv kokku" >> verbiinfo.txt
cat *1txt \
| grep ' sup' \
| wc -l >> verbiinfo.txt

echo "
sup ps ill" >> verbiinfo.txt
cat *1txt \
| grep ' sup ps ill' \
| wc -l >> verbiinfo.txt

echo "
sup ps in" >> verbiinfo.txt
cat *1txt \
| grep ' sup ps in' \
| wc -l >> verbiinfo.txt

echo "
sup ps el" >> verbiinfo.txt
cat *1txt \
| grep ' sup ps el' \
| wc -l >> verbiinfo.txt

echo "
sup ps tr" >> verbiinfo.txt
cat *1txt \
| grep ' sup ps tr' \
| wc -l >> verbiinfo.txt

echo "
sup ps abes" >> verbiinfo.txt
cat *1txt \
| grep ' sup ps abes' \
| wc -l >> verbiinfo.txt

echo "
Supiini impersonaal sup imps" >> verbiinfo.txt
cat *1txt \
| grep ' sup imps' \
| wc -l >> verbiinfo.txt

echo "
PARTITSIIBID" >> verbiinfo.txt
echo "Mineviku partitsiibid. Arv käsitsi lisatud, saadud teise skriptiga: " >> verbiinfo.txt

echo "
GERUNDIIVID" >> verbiinfo.txt
echo "Des-vorm" >> verbiinfo.txt
cat *1txt \
| grep ' ger' \
| wc -l >> verbiinfo.txt

