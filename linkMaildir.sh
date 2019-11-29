#!/bin/sh
# create by sren at 2019-11-29

## isync(mbsync) 同步的文件名如果是中文，会转换为utf-7格式：
## &V4NXPpCuTvY-
## 本脚本可以将当前目录下的utf-7格式文件名转换为utf-8格式，并建立软链接
## 这样就可以在emacs中使用正常的中文文件名了

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

