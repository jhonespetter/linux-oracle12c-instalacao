#!/bin/bash

export TMP=/tmp
export TMPDIR=$TMP
export PATH=/usr/sbin:/usr/local/bin:$PATH
export ORACLE_HOSTNAME=srv01.labs.eti.br
export ORACLE_UNQNAME=srv01

export ORACLE_SID=syserp
ORAENV_ASK=NO
. oraenv
ORAENV_ASK=YES

# Start Listener
lsnrctl start

# Start Database
sqlplus / as sysdba << EOF
STARTUP;
EXIT;
EOF