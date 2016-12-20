#!/bin/sh

#export PATH="/home/bin/0bin:./:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/games:/usr/games"

#alias ..="cd .."
#alias ../..="cd ../.."
alias ll='ls -l $@'
alias ec='emacsclient -nw $@'
alias gits="git status ./"

export EDITOR="emacsclient "

#export PS1="%K{blue}%n@%m%k %B%F{cyan}%(4~|...|)%3~%F{white} %# %b%f%k"
export PS1="\$ "

cd /home


#xmodmap /home/bin/0bin/xmodmaprc

# c compile 
alias CC="gcc -std=c99"


XMODIFIERS="@im=fcitx"
XIM=fcitx
XIM_PROGRAM=fcitx
QT_IM_MODULE=fcitx
GTK_IM_MODULE=fcitx
GTK3_IM_MODULE=fcitx

source texlive.env
source jdk8.env
source gradle.env

