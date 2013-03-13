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

