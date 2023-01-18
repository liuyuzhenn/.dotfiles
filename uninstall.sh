#!/usr/bin/bash

CONFIG_DIR=.config
CONFIG_ITEMS=`ls $CONFIG_DIR`
BIN_DIR=$PWD/bin
FILES=`ls -a --ignore="*.sh" --ignore="." --ignore=".." --ignore=".git*" --ignore="*.md" --ignore=".config"`

for f in $CONFIG_ITEMS
do
	dst=~/.config/$f
	if [[ -h $dst ]]; then
		rm $dst
	fi
	# mv .bak file back
	if [[ -f $dst.bak || -d $dst.bak ]]; then
		mv $dst.bak $dst
		echo "Move $dst.bak to $dst"
	fi
done

for f in $FILES
do
	dst=~/$f
	if [[ -h $dst ]]; then
		rm $dst
	fi
	# mv .bak file back
	if [[ -f $dst.bak || -d $dst.bak ]]; then
		mv $dst.bak $dst
		echo "Move $dst.bak to $dst"
	fi
done

for f in $(ls $BIN_DIR)
do
	dst=/usr/bin/$f
	if [[ -h $dst ]]; then
		rm $dst
	fi

	# mv .bak file back
	if [[ -f $dst.bak ]]; then
		mv $dst.bak $dst
		echo "Move $dst.bak to $dst"
	fi
done
