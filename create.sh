#!/bin/bash
dir_path=$(dirname $(realpath $0))
printf "What's the problem name?\n"
read problem
printf "Please, select an folder:\n"
select d in problems/*; do test -n "$d" && break; echo ">>> Invalid Selection"; done
mkdir -p $d/$problem \
    && cd "$_" \
    && touch main.cpp \
    && cp $dir_path/boilerplate.cpp main.cpp