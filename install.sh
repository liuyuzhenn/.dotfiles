#!/usr/bin/bash

PWD=`pwd`
CONFIG_DIR=$PWD/.config
FILES=

for f in $(ls $CONFIG_DIR)
do
	dst=~/.config/$f
	src=$CONFIG_DIR/$f
	if [[ -h $dst ]]; then
		echo "Remove previous link:$dst"
		rm $dst
	elif [[ -f $dst || -d $dst ]]; then
		# back up previous data
		bak=$dst.bak
		echo "backup $dst to $bak" 
		mv $dst $bak -i
		
	fi
	# link
	echo "create link $dst"
	ln -s $src $dst
done

for f in `ls -a --ignore="*.sh" --ignore="." --ignore=".." --ignore=".git*" --ignore="*.md" --ignore=".config"`
do
	dst=~/$f
	src=$PWD/$f
	if [[ -h $dst ]]; then
		echo "Remove previous link:$dst"
		rm $dst
	elif [[ -f $dst || -d $dst ]]; then
		# back up previous data
		bak=$dst.bak
		echo "backup $dst to $bak" 
		mv $dst $bak -i
		
	fi
	# link
	echo "create link $dst"
	ln -s $src $dst
done
