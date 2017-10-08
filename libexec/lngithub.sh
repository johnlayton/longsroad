#!/usr/bin/env bash

if [ $# -lt 1 ]
  then
    echo "Expected <repo_name>"
    exit
fi

mkdir $1
pushd $1
echo "# $1" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:johnlayton/$1.git
git push -u origin master
popd