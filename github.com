#!/bin/bash 
echo "please input the repo name"
read
git init
git add *
git commit -m "fc"
git remote add origin git@github.com:bestdpf/$REPLY
git push -u origin master
