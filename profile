#!/bin/sh
export LCD=/home/bin/0bin
export PATH=$LCD/vega:$PATH:./


export VEGA_BUILD_HOME=/home/vega 
export VEGA_HOME=$VEGA_BUILD_HOME/Build

export PS1="\$"

source $LCD/vega/vega.sh

source games.sh
