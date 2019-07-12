#!/bin/bash

cd ~/Code
mkdir $1
printf "Created folder %s" $1
cd $1
git init
touch README.md
touch .gitignore
code .
