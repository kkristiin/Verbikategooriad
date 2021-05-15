#!/bin/bash

cat *mrf \
| grep '.* V .*' \
| grep -o 'V.*' > verbid.1txt

