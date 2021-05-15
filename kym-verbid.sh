#!/bin/bash

cat *kym \
| grep '.*_V_.*' \
| sed 's/^.*    //g' \
| sed 's/^[^[:space:]]*[[:space:]]\{1,\}//' \
| sed 's/\/\///g' \
| sed 's/_//g' > verbid.1txt

