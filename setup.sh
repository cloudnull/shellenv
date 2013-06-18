#!/usr/bin/env bash

for i in .*
do
    if [ $i != ".git" ];then
        if [ -f ~/$i ];then
            if [ ! -L ~/$i ];then
                mv ~/$i ~/$i.bak
            else
                rm ~/$i
            fi
        fi
        ln -s $(pwd)/$i ~/$i
    fi
done

