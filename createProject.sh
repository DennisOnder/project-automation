#!/bin/bash

cd ~/Code
mkdir $1
printf "Created folder %s \n" $1
cd $1
git init
touch README.md
touch .gitignore
code .
