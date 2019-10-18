#!/bin/sh

# cd /home/work/.bin/
export XBIN=`dirname $0`
export PATH=$XBIN:$PATH
echo "update path: "$PATH


eval "$(fasd --init auto)"
alias ..="cd .."
alias ...="cd ../.."
alias ll='ls -l $@'
alias gst="git status ./"
alias CC="gcc -std=c99"

export EDITOR="emacsclient "
export PS1="\$ "

source jdk8.env
source gradle.env

source $XBIN/config/fcitx.env

source jdk11.env
#source scala.env
source texlive.env
export IDEA_JDK=/home/bin/java/jdk11

cd /home/work
