#!/bin/bash

r=$(fd $1 | fzf)

if [ ! -z "$r" ]
then 
	vim $r
fi

#vim $(fd $1 | fzf)
