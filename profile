#!/bin/sh

export XBIN=/home/bin/0bin
export PATH=$XBIN:$PATH
eval "$(fasd --init auto)"
alias ..="cd .."
alias ...="cd ../.."
alias ll='ls -l $@'
alias gst="git status ./"
alias CC="gcc -std=c99"

export EDITOR="emacsclient "
export PS1="\$ "

source $XBIN/node.env
source $XBIN/jdk8.env
source $XBIN/gradle.env

#XMODIFIERS="@im=fcitx"
#XIM=fcitx
#XIM_PROGRAM=fcitx
#QT_IM_MODULE=fcitx
#GTK_IM_MODULE=fcitx
#GTK3_IM_MODULE=fcitx

source /home/bin/0bin/jdk11.env
#source /home/bin/0bin/node.env
#source /home/bin/0bin/gradle.env
#source /home/bin/0bin/scala.env
source /home/bin/0bin/texlive.env
export IDEA_JDK=/home/bin/java/jdk11


cd /home
