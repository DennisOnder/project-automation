#!/bin/bash

printf 'Language (node, go): '
read LANG

case $LANG in
  node)
    echo "Creating a new Node project..."
    cd ~/Code
    ;;
  go)
    echo "Creating a new Golang project..."
    cd ~/go/src/github.com/DennisOnder
    ;;
  *)
    echo "Please provide a language from the list of supported options."
    exit 1
    ;;
esac

mkdir $1
printf "Created folder %s \n" $1
cd $1
git init
git remote add origin https://github.com/DennisOnder/$1
touch README.md
touch .gitignore
code .
