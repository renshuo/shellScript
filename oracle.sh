echo "set oracle env"
export ORACLE_BASE=/home/bin/oracle/oracle
export ORACLE_HOME=/home/bin/oracle/oracle/product/11.2.0/dbhome
export ORACLE_SID=orcl
export ORACLE_INVENTORY=/home/bin/oracle/oracle/inventory
export ORACLE_BASE ORACLE_SID ORACLE_HOME
export PATH=$ORACLE_HOME/bin:$PATH
export LD_LIBRARY_PATH=$ORACLE_HOME/lib:$LD_LIBRARY_PATH
export EDITOR=vi
export VISUAL=vi

alias sqlplus="rlwrap sqlplus"
alias rman="rlwrap rman"

