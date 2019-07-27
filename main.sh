printf 'Git/GitHub Username: '
read USERNAME
printf 'Project name: '
read NAME
printf 'Language (javascript,python or go): '   
read LANG

case $LANG in
  javascript)
    echo "Creating a new JavaScript project..." 
    cd ~/Code
    mkdir $NAME
    printf "Created folder %s \n" $NAME
    cd $NAME
    npm init -y
    touch index.js
    ;;
  python)
    echo "Creating a new Python project..."
    cd ~/Code
    mkdir $NAME
    printf "Created folder %s \n" $NAME
    cd $NAME
    touch main.py
    ;;
  go)
    echo "Creating a new Golang project..."
    cd ~/go/src/github.com/$USERNAME
    mkdir $NAME
    printf "Created folder %s \n" $NAME
    cd $NAME
    touch main.go
    ;;
  *)
    echo "Please provide a language from the list of supported options." 
    exit 1
    ;;
esac

git init
git remote add origin https://github.com/$USERNAME/$NAME
touch README.md
touch .gitignore
code .
exit 0

