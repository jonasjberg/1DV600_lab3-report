#!/usr/bin/env bash

THIS_PATH="$(dirname -- "$(readlink -fn -- "$0")")"                   

(cd "$THIS_PATH") 2>/dev/null 
if [ "$?" -ne "0" ]
then
    echo "[ERROR] Unable to cd to THIS_PATH: \"${SUBSHELL_PATH}\"" >&2
    exit 1
fi

(cd "$THIS_PATH" && cp -v ../../jonasjberg-1dv600-lab.git/doc/*.eps ./include/)

