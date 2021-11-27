#!/bin/bash

ret=$(rg --line-number "$1" | fzf )
if [ -z "$ret" ]
then 
	exit
fi
file=$(echo $ret | cut -d : -f 1)
line=$(echo $ret | cut -d : -f 2)

nvim $file +$line
