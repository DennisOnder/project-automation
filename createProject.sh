#!/bin/bash
printf 'Project name: '
read NAME
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

mkdir $NAME
printf "Created folder %s \n" $NAME
cd $NAME
git init
git remote add origin https://github.com/denis-onder/$NAME
touch README.md
touch .gitignore
code .
