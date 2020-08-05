#!/bin/sh

# 本文件的配置用于修正Linux系统本身的问题
# work.env用于配置开发环境
export XBIN=/home/bin/0bin/
export PATH=$PATH:$XBIN

#alias gst="git status ./"
#alias work='source /home/bin/0bin/work.env'

export EDITOR="emacsclient "

source $XBIN/gradle.env
source $XBIN/jdk.env
source $XBIN/config/fcitx5.env
source $XBIN/texlive.env

#eval "$(fasd --init auto)"

# export IDEA_JDK=/home/bin/java/jdk11


