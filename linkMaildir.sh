#!/bin/sh

maildirs=$(ls)


for i in $maildirs
do
    if [[ "$i" =~ ^\&.* ]]; then
        chname=`echo $i | tr "&" "+" | tr "," "/" | iconv -f UTF-7 -t UTF-8`
        if [ -e $chname ] ; then
            echo "file exist: $chname"
        else
            ln -s $i $chname
            echo "link from $i to $chname"
        fi
    fi
done

