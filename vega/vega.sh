#!/bin/sh
vpe(){
source jdk5env.sh
source bw451env.sh
source $VEGA_BUILD_HOME/vegaEnv.sh
cd $VEGA_BUILD_HOME/VPE/vpeDev/
}

esb(){
source jdk5env.sh
source bw451env.sh
source $VEGA_BUILD_HOME/vegaEnv.sh
cd $VEGA_BUILD_HOME/ESB/esbDev
}

bw451(){
source jdk5.sh
export VITRIA=/home/bin/vitria/bw451
source $VITRIA/bin/i386-linux/vtconfig.sh

alias bme=$VITRIA/bme/bin/bme.sh

alias startldap="/home/bin/vitria/opends/bin/start-ds"
alias stopldap="/home/bin/vitria/opends/bin/stop-ds"
alias stopadmin=stopadminwebserver
alias startadmin=startadminwebserver
}




oracle(){
export ORACLE_BASE=/home/backup/oracle
export ORACLE_HOME=/home/backup/oracle/product/db
export ORACLE_SID=orcl
export ORACLE_INVENTORY=/home/backup/oracle/inventory
export ORACLE_BASE ORACLE_SID ORACLE_HOME
export PATH=$ORACLE_HOME/bin:$PATH
export LD_LIBRARY_PATH=$ORACLE_HOME/lib:$LD_LIBRARY_PATH
export EDITOR=vi
export VISUAL=vi

alias sqlplus="rlwrap sqlplus"
alias rman="rlwrap rman"
}

