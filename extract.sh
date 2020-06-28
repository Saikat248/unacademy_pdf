#!/bin/bash

url=$1

grep -o "https://player.uacdn.net/slides_pdf\S*.pdf" $url > cut.html

sed -e 's/\"\,\"withoutA\S*/\r/g' -e '/with_annotation/d' cut.html > final_sorted.html

wget -i final_sorted.html

# Cleaning up

rm *.[0-9] *.html
