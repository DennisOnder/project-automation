#!/bin/bash

cd ~/Code
mkdir $1
printf "Created folder %s \n" $1
cd $1
git init
git remote add origin https://github.com/DennisOnder/$1
touch README.md
touch .gitignore
code .
