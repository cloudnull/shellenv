#!/usr/bin/env bash

for i in .*
do
    if [ $i != ".git" ];then
        ln -s $i ~/$i
    fi
done

