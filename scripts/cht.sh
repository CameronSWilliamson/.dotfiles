#!/usr/bin/env bash

# borrowed from ThePrimeagen https://youtu.be/hJzqEAf2U4I

languages=`echo "golang lua cpp c typescript nodejs rust python" | tr ' ' '\n'`
core_utils=`echo "xargs find mv sed awk grep tmux" | tr ' ' '\n'`

selected=`printf "$languages\n$core_utils" | fzf`
read -p "query: " query

if printf $languages | grep -qs $selected
then
    tmux neww bash -c "curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done"
else
    curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done
fi
