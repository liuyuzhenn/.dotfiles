#!/usr/bin/bash

PWD=`pwd`
CONFIG_DIR=$PWD/.config
BIN_DIR=$PWD/bin

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
	echo "create new link $dst -> $src"
	ln -s $src $dst
done

for f in `ls -a --ignore="*.sh" --ignore="." --ignore=".." --ignore=".git*" --ignore="*.md" --ignore=".config" --ignore="bin" --ignore=".local"`
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
	echo "create new link $dst -> $src"
	ln -s $src $dst
done

echo "Install to /usr/bin..."
for f in $(ls $BIN_DIR)
do
	dst=/usr/bin/$f
	src=$BIN_DIR/$f
	if [[ -h $dst ]]; then
		echo "Remove previous link:$dst"
		rm $dst
	elif [[ -f $dst ]]; then
		# back up previous data
		bak=$dst.bak
		echo "backup $dst to $bak" 
		mv $dst $bak -i
	fi
	# link
	echo "create new link $dst -> $src"
	ln -s $src $dst
done
