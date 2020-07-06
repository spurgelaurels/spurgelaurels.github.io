#!/bin/bash
#
#  TAG EXTRACTOR
#  awk '/tags:/,/\---/ { if ($0 !~ /(\---|tags\:)/) { print } }' < * | sort -u

JEKYLLROOT="/home/daphne/sites/daphne-reed.io"
PAGESROOT="/home/daphne/sites/spurgelaurels.github.io"

cd $JEKYLLROOT
bundle exec jekyll build &&
cd _site && cp -rp * $PAGESROOT
cd $PAGESROOT && git add . && git commit -m "Automatic deploy" && git push

