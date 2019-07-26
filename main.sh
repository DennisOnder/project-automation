#!/bin/bash
printf 'Git/GitHub Username: '
read USERNAME
printf 'Project name: '
read NAME
printf 'Language (javascript or go): '
read LANG

case $LANG in
  javascript)
    echo "Creating a new JavaScript project..."
    cd /Code
    ;;
  go)
    echo "Creating a new Golang project..."
    cd ~/go/src/github.com/$USERNAME
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
git remote add origin https://github.com/$USERNAME/$NAME
touch README.md
touch .gitignore
code .
