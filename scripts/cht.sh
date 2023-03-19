#!/usr/bin/env bash

# borrowed from ThePrimeagen https://youtu.be/hJzqEAf2U4I

languages=`echo "golang lua cpp c typescript nodejs rust python" | tr ' ' '\n'`
core_utils=`echo "xargs find mv sed awk grep tmux" | tr ' ' '\n'`

selected=`printf "other\n$languages\n$core_utils" | fzf`
if [ "$selected" == "other" ]; then
    read -p "subject: " selected
fi
read -p "query: " query

echo $selected

if printf $languages | grep -qs $selected; then
    tmux neww bash -c "curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done"
else

    if [ -z "$query" ]; then
        curl cht.sh/$selected & while [ : ]; do sleep 1; done
    else
        curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done
    fi
fi
