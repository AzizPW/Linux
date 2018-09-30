[oracle@glindo]$ cat ftp.sh
#!/bin/bash

HOST='192.168.123.124'
USER='oracle'
PASSWD='oracle123'

SRC_DIR=/backup/rman_09082016
TGT_DIR=/backup/glindo/rman_09082016

cd ${SRC_DIR}
ftp -n $HOST <<!
quote USER $USER
quote PASS $PASSWD
cd ${TGT_DIR}
bin
prompt
hash
mput *
!