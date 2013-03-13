#!/bin/sh
export LCD=/home/bin/0bin
export PATH=$LCD/vega:$PATH:./


export VEGA_BUILD_HOME=/home/vega 
export VEGA_HOME=$VEGA_BUILD_HOME/Build

export PS1="\$"

esb(){
source jdk5.sh
source bw451.sh
source $VEGA_BUILD_HOME/vegaEnv.sh
cd $VEGA_BUILD_HOME/ESB/esbDev
}

source games.sh
