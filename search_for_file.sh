#!/bin/bash

echo "Which file are you looking for?"
read -r search
c=0
search_dir() {
	for i in *; do
		if [ $c -eq 1 ]; then
			break
		fi
		if [ "$i" = "$search" ]; then
			echo "The file $gesucht was found"
			echo "You can find it following this path:"
			pwd
			c=$((c + 1))
			line=$(wc -l < $i)
			echo "The file has $line lines of content."
			return 0;
		elif [ -d "$i" ]; then
				cd $i
				search_dir
				cd ..
		fi
	done
}
search_dir

if [ $c -eq 0 ]; then
	echo  "The file $search does not exist"
	echo "Do you want to create this file?"
	echo "[Y/N]"
	read new
	if [ "$new" = "Y" ] || [ "$new" = "y" ]; then
		echo "The file $search was created."
		echo "You can find it following this path:"
		pwd
		touch $search
	fi
fi
