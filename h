#!/bin/bash

cmd=$(cat ~/.zsh_history | fzf | cut -f 2 -d ";")
echo $cmd
eval $cmd

