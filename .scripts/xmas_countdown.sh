#!/bin/bash

for i in {10..1}; do
  if [[ $(echo "24 Dezember $(gdate +"%Y")") =~ $(gdate -d "now + $i days" +"%d %B %Y") ]]; then
    echo "$i $([ $i -eq 1 ] && echo "day" || echo "days") until X-Mas"
  fi
done

if [[ $(gdate +"%d%m") =~ ^2[4-6]12$ ]]; then
  echo "Merry Christmas 🎅"
fi