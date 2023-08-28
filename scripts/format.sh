#!/bin/bash

if [ $# -eq 1 ]
then
    filename=$(basename -- "$1")
    extension="${filename##*.}"

    case "${extension}" in
        rs) rustfmt --edition 2021 $1;;
        js | ts | jsx | tsx | html | json) npx prettier --write $1;;
        py) black $1;;
        ml) ocamlformat $1 --inplace;;
    esac
fi
