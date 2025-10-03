#!/bin/bash

c=0

for i in ./*.txt; do
	if [ -f "$i" ]; then
		echo "Datei: $i"
		line=$( wc -l < $i)
		echo "$i hat $line Zeilen"
		c=$((c + 1))
	fi
done

echo "Es gibt $c txt-Dateien in dieser Directory"
c2=0
for i in ./*; do
	if [ -d "$i" ]; then
		echo "Ordner $i gefunden"
		cd $i
		ls
		c2=$((c2 + 1))
		cd ..
	fi
done
if [ $c2 -eq 0 ]; then
	echo "Kein Ordner in dieser Directory vorhanden"
else
	echo "Es gibt $c2 Ordner in dieser Directory"
fi

