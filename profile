#!/bin/sh

#export PATH="/home/bin/0bin:./:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin:/usr/local/games:/usr/games"
export PATH=/home/bin/0bin:$PATH

eval "$(fasd --init auto)"
#alias ..="cd .."
#alias ../..="cd ../.."
alias ll='ls -l $@'
alias ec='emacsclient -nw $@'
alias gits="git status ./"

export EDITOR="emacsclient "

#export PS1="%K{blue}%n@%m%k %B%F{cyan}%(4~|...|)%3~%F{white} %# %b%f%k"
export PS1="\$ "

cd /home

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

