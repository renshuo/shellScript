#!/bin/sh
export LCD=/home/bin/0bin
export PATH=$LCD/games/:$PATH:./


export PATH=$LCD/vega:$LCD/vega/work:$LCD/vega/xib:$LCD/vega/xa:$PATH

export VEGA_BUILD_HOME=/home/vega 
export VEGA_HOME=$VEGA_BUILD_HOME/Build
export VEGA_DATA_ARCH=$VEGA_HOME/upload

alias ll='ls -l $@'
alias ec='emacsclient -nw $@'

export PS1="\$ "


export EDITOR="emacsclient -nw"



