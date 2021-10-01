#!/bin/bash

usage() {
	cat <<EOF

f is a file fuzzy finder, which will exclude the files in .gitignore and open it with vim. 

Usage:
  f             find all files in current path
  f keyword     find all files with keyworkd in current path
  f -i keyword  find all files with keyworkd in current path, including the files in .gitignore
EOF
}

r=""
case $1 in
	-h|help) usage
		;;
	-i) r=$(fd -I $2 | fzf)
		;; 
	*) r=$(fd $1 | fzf)
		;;
esac	

if [ ! -z "$r" ]
then 
	vim $r
fi
