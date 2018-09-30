#!/bin/sh

#
# Generated onMon Jul 18 23:12:59 PDT 2016# Start of user configurable variables
#
LANG=C
export LANG

# SSO username and password
read -p 'SSO User Name:' SSO_USERNAME
read -sp 'SSO Password:' SSO_PASSWORD


# Path to wget command
WGET=/usr/bin/wget
# Location of cookie file
COOKIE_FILE=/tmp/$$.cookies

# Log directory and file
LOGDIR=.
LOGFILE=$LOGDIR/wgetlog-`date +%m-%d-%y-%H:%M`.log
# Output directory and file
OUTPUT_DIR=.
#
# End of user configurable variable
#

if [ "$SSO_PASSWORD " = " " ]
then
 echo "Please edit script and set SSO_PASSWORD"
 exit
fi

# Contact osdc site so that we can get SSO Params for logging in
SSO_RESPONSE=`$WGET --user-agent="Mozilla/5.0" --no-check-certificate https://edelivery.oracle.com/osdc/faces/SearchSoftware 2>&1|grep Location`

# Extract request parameters for SSO
SSO_TOKEN=`echo $SSO_RESPONSE| cut -d '=' -f 2|cut -d ' ' -f 1`
SSO_SERVER=`echo $SSO_RESPONSE| cut -d ' ' -f 2|cut -d '/' -f 1,2,3`
SSO_AUTH_URL=/sso/auth
AUTH_DATA="ssousername=$SSO_USERNAME&password=$SSO_PASSWORD&site2pstoretoken=$SSO_TOKEN"

# The following command to authenticate uses HTTPS. This will work only if the wget in the environment
# where this script will be executed was compiled with OpenSSL. Remove the --secure-protocol option
# if wget was not compiled with OpenSSL
# Depending on the preference, the other options are --secure-protocol= auto|SSLv2|SSLv3|TLSv1
$WGET --user-agent="Mozilla/5.0" --secure-protocol=auto --post-data $AUTH_DATA --save-cookies=$COOKIE_FILE --keep-session-cookies $SSO_SERVER$SSO_AUTH_URL -O sso.out >> $LOGFILE 2>&1

rm -f sso.out




  $WGET  --user-agent="Mozilla/5.0" --no-check-certificate --load-cookies=$COOKIE_FILE --save-cookies=$COOKIE_FILE --keep-session-cookies "https://edelivery.oracle.com/osdc/download?fileName=V46095-01_1of2.zip&token=WUxvRUVYbm9oU1NBM0xadlN5bEh2dyE6OiF1c2VybmFtZT1FUEQtQVpJWi5XSUJPV09ATUlJLkNPLklEJnVzZXJJZD02NzI4NTIyJmNhbGxlcj1TZWFyY2hTb2Z0d2FyZSZjb3VudHJ5SWQ9SUQmZW1haWxBZGRyZXNzPWF6aXoud2lib3dvQG1paS5jby5pZCZmaWxlSWQ9NzIxNjI4ODEmYXJ1PTE3ODQxNzUxJmFncmVlbWVudElkPTE3OTUzNjAmc29mdHdhcmVDaWRzPTE3NDIxMSZwbGF0Zm9ybUNpZHM9MzUmcHJvZmlsZUluc3RhbmNlQ2lkPTU1MTk1NSZkb3dubG9hZFNvdXJjZT13Z2V0JnByb2ZpbGVJbnN0YW5jZU5hbWU9T3JhY2xlIERhdGFiYXNlIEVudGVycHJpc2UgRWRpdGlvbiAxMi4xLjAuMi4wIGZvciBMaW51eCB4ODYtNjQmcGxhdGZvcm1OYW1lPUxpbnV4IHg4Ni02NCZtZWRpYUNpZD0yMjkzNjMmcmVsZWFzZUNpZD0maXNSZWxlYXNlU2VhcmNoPWZhbHNl" -O $OUTPUT_DIR/V46095-01_1of2.zip >> $LOGFILE 2>&1 



  $WGET  --user-agent="Mozilla/5.0" --no-check-certificate --load-cookies=$COOKIE_FILE --save-cookies=$COOKIE_FILE --keep-session-cookies "https://edelivery.oracle.com/osdc/download?fileName=V46095-01_2of2.zip&token=ZlZYUlZxaXpXbEpkYzFvV05scStaQSE6OiF1c2VybmFtZT1FUEQtQVpJWi5XSUJPV09ATUlJLkNPLklEJnVzZXJJZD02NzI4NTIyJmNhbGxlcj1TZWFyY2hTb2Z0d2FyZSZjb3VudHJ5SWQ9SUQmZW1haWxBZGRyZXNzPWF6aXoud2lib3dvQG1paS5jby5pZCZmaWxlSWQ9NzIxNjI4OTEmYXJ1PTE3ODQxNzUxJmFncmVlbWVudElkPTE3OTUzNjAmc29mdHdhcmVDaWRzPTE3NDIxMSZwbGF0Zm9ybUNpZHM9MzUmcHJvZmlsZUluc3RhbmNlQ2lkPTU1MTk1NSZkb3dubG9hZFNvdXJjZT13Z2V0JnByb2ZpbGVJbnN0YW5jZU5hbWU9T3JhY2xlIERhdGFiYXNlIEVudGVycHJpc2UgRWRpdGlvbiAxMi4xLjAuMi4wIGZvciBMaW51eCB4ODYtNjQmcGxhdGZvcm1OYW1lPUxpbnV4IHg4Ni02NCZtZWRpYUNpZD0yMjkzNjMmcmVsZWFzZUNpZD0maXNSZWxlYXNlU2VhcmNoPWZhbHNl" -O $OUTPUT_DIR/V46095-01_2of2.zip >> $LOGFILE 2>&1 



  $WGET  --user-agent="Mozilla/5.0" --no-check-certificate --load-cookies=$COOKIE_FILE --save-cookies=$COOKIE_FILE --keep-session-cookies "https://edelivery.oracle.com/osdc/download?fileName=V46097-01.zip&token=bm0wU2Q3eXdjendPN1kvaU8xTWpYUSE6OiF1c2VybmFtZT1FUEQtQVpJWi5XSUJPV09ATUlJLkNPLklEJnVzZXJJZD02NzI4NTIyJmNhbGxlcj1TZWFyY2hTb2Z0d2FyZSZjb3VudHJ5SWQ9SUQmZW1haWxBZGRyZXNzPWF6aXoud2lib3dvQG1paS5jby5pZCZmaWxlSWQ9NzIxNjI4OTgmYXJ1PTE3ODQxNzUzJmFncmVlbWVudElkPTE3OTUzNjAmc29mdHdhcmVDaWRzPTE3NDIxMSZwbGF0Zm9ybUNpZHM9MzUmcHJvZmlsZUluc3RhbmNlQ2lkPTU1MTk1NSZkb3dubG9hZFNvdXJjZT13Z2V0JnByb2ZpbGVJbnN0YW5jZU5hbWU9T3JhY2xlIERhdGFiYXNlIEVudGVycHJpc2UgRWRpdGlvbiAxMi4xLjAuMi4wIGZvciBMaW51eCB4ODYtNjQmcGxhdGZvcm1OYW1lPUxpbnV4IHg4Ni02NCZtZWRpYUNpZD0yMjkzNjUmcmVsZWFzZUNpZD0maXNSZWxlYXNlU2VhcmNoPWZhbHNl" -O $OUTPUT_DIR/V46097-01.zip >> $LOGFILE 2>&1 



  $WGET  --user-agent="Mozilla/5.0" --no-check-certificate --load-cookies=$COOKIE_FILE --save-cookies=$COOKIE_FILE --keep-session-cookies "https://edelivery.oracle.com/osdc/download?fileName=V46100-01.zip&token=ekdGZkNVbXFRSWt5Y2lDdGZaVWpsZyE6OiF1c2VybmFtZT1FUEQtQVpJWi5XSUJPV09ATUlJLkNPLklEJnVzZXJJZD02NzI4NTIyJmNhbGxlcj1TZWFyY2hTb2Z0d2FyZSZjb3VudHJ5SWQ9SUQmZW1haWxBZGRyZXNzPWF6aXoud2lib3dvQG1paS5jby5pZCZmaWxlSWQ9NzIxNjMwMTYmYXJ1PTE3ODQxNzU2JmFncmVlbWVudElkPTE3OTUzNjAmc29mdHdhcmVDaWRzPTE3NDIxMSZwbGF0Zm9ybUNpZHM9MzUmcHJvZmlsZUluc3RhbmNlQ2lkPTU1MTk1NSZkb3dubG9hZFNvdXJjZT13Z2V0JnByb2ZpbGVJbnN0YW5jZU5hbWU9T3JhY2xlIERhdGFiYXNlIEVudGVycHJpc2UgRWRpdGlvbiAxMi4xLjAuMi4wIGZvciBMaW51eCB4ODYtNjQmcGxhdGZvcm1OYW1lPUxpbnV4IHg4Ni02NCZtZWRpYUNpZD0yMjkzNjgmcmVsZWFzZUNpZD0maXNSZWxlYXNlU2VhcmNoPWZhbHNl" -O $OUTPUT_DIR/V46100-01.zip >> $LOGFILE 2>&1 



  $WGET  --user-agent="Mozilla/5.0" --no-check-certificate --load-cookies=$COOKIE_FILE --save-cookies=$COOKIE_FILE --keep-session-cookies "https://edelivery.oracle.com/osdc/download?fileName=V47121-01.zip&token=WTE0WFMwaEZjanBaWk91TmZSZ1k2QSE6OiF1c2VybmFtZT1FUEQtQVpJWi5XSUJPV09ATUlJLkNPLklEJnVzZXJJZD02NzI4NTIyJmNhbGxlcj1TZWFyY2hTb2Z0d2FyZSZjb3VudHJ5SWQ9SUQmZW1haWxBZGRyZXNzPWF6aXoud2lib3dvQG1paS5jby5pZCZmaWxlSWQ9NzM3OTg4MTUmYXJ1PTE4MDY5NTgzJmFncmVlbWVudElkPTE3OTUzNjAmc29mdHdhcmVDaWRzPTE3NDIxMSZwbGF0Zm9ybUNpZHM9MzUmcHJvZmlsZUluc3RhbmNlQ2lkPTU1MTk1NSZkb3dubG9hZFNvdXJjZT13Z2V0JnByb2ZpbGVJbnN0YW5jZU5hbWU9T3JhY2xlIERhdGFiYXNlIEVudGVycHJpc2UgRWRpdGlvbiAxMi4xLjAuMi4wIGZvciBMaW51eCB4ODYtNjQmcGxhdGZvcm1OYW1lPUxpbnV4IHg4Ni02NCZtZWRpYUNpZD0yNTM5MDgmcmVsZWFzZUNpZD0maXNSZWxlYXNlU2VhcmNoPWZhbHNl" -O $OUTPUT_DIR/V47121-01.zip >> $LOGFILE 2>&1 



  $WGET  --user-agent="Mozilla/5.0" --no-check-certificate --load-cookies=$COOKIE_FILE --save-cookies=$COOKIE_FILE --keep-session-cookies "https://edelivery.oracle.com/osdc/download?fileName=V47124-01.zip&token=TUZFZW8yUC9ucEFSYjcvNnJTR3dFdyE6OiF1c2VybmFtZT1FUEQtQVpJWi5XSUJPV09ATUlJLkNPLklEJnVzZXJJZD02NzI4NTIyJmNhbGxlcj1TZWFyY2hTb2Z0d2FyZSZjb3VudHJ5SWQ9SUQmZW1haWxBZGRyZXNzPWF6aXoud2lib3dvQG1paS5jby5pZCZmaWxlSWQ9NzM3OTkwODkmYXJ1PTE4MDY5NTg2JmFncmVlbWVudElkPTE3OTUzNjAmc29mdHdhcmVDaWRzPTE3NDIxMSZwbGF0Zm9ybUNpZHM9MzUmcHJvZmlsZUluc3RhbmNlQ2lkPTU1MTk1NSZkb3dubG9hZFNvdXJjZT13Z2V0JnByb2ZpbGVJbnN0YW5jZU5hbWU9T3JhY2xlIERhdGFiYXNlIEVudGVycHJpc2UgRWRpdGlvbiAxMi4xLjAuMi4wIGZvciBMaW51eCB4ODYtNjQmcGxhdGZvcm1OYW1lPUxpbnV4IHg4Ni02NCZtZWRpYUNpZD0yNTM5MTEmcmVsZWFzZUNpZD0maXNSZWxlYXNlU2VhcmNoPWZhbHNl" -O $OUTPUT_DIR/V47124-01.zip >> $LOGFILE 2>&1 



  $WGET  --user-agent="Mozilla/5.0" --no-check-certificate --load-cookies=$COOKIE_FILE --save-cookies=$COOKIE_FILE --keep-session-cookies "https://edelivery.oracle.com/osdc/download?fileName=V46099-01.zip&token=STVraitBb096akUxZ1lHalBzMGlkUSE6OiF1c2VybmFtZT1FUEQtQVpJWi5XSUJPV09ATUlJLkNPLklEJnVzZXJJZD02NzI4NTIyJmNhbGxlcj1TZWFyY2hTb2Z0d2FyZSZjb3VudHJ5SWQ9SUQmZW1haWxBZGRyZXNzPWF6aXoud2lib3dvQG1paS5jby5pZCZmaWxlSWQ9NzIxNjMwMDcmYXJ1PTE3ODQxNzU1JmFncmVlbWVudElkPTE3OTUzNjAmc29mdHdhcmVDaWRzPTE3NDIxMSZwbGF0Zm9ybUNpZHM9MzUmcHJvZmlsZUluc3RhbmNlQ2lkPTU1MTk1NSZkb3dubG9hZFNvdXJjZT13Z2V0JnByb2ZpbGVJbnN0YW5jZU5hbWU9T3JhY2xlIERhdGFiYXNlIEVudGVycHJpc2UgRWRpdGlvbiAxMi4xLjAuMi4wIGZvciBMaW51eCB4ODYtNjQmcGxhdGZvcm1OYW1lPUxpbnV4IHg4Ni02NCZtZWRpYUNpZD0yMjkzNjcmcmVsZWFzZUNpZD0maXNSZWxlYXNlU2VhcmNoPWZhbHNl" -O $OUTPUT_DIR/V46099-01.zip >> $LOGFILE 2>&1 



  $WGET  --user-agent="Mozilla/5.0" --no-check-certificate --load-cookies=$COOKIE_FILE --save-cookies=$COOKIE_FILE --keep-session-cookies "https://edelivery.oracle.com/osdc/download?fileName=V46096-01_1of2.zip&token=WnNRUkZJL2FFNnduS1Y1THBhS0xFZyE6OiF1c2VybmFtZT1FUEQtQVpJWi5XSUJPV09ATUlJLkNPLklEJnVzZXJJZD02NzI4NTIyJmNhbGxlcj1TZWFyY2hTb2Z0d2FyZSZjb3VudHJ5SWQ9SUQmZW1haWxBZGRyZXNzPWF6aXoud2lib3dvQG1paS5jby5pZCZmaWxlSWQ9NzIxNjI5MDgmYXJ1PTE3ODQxNzUyJmFncmVlbWVudElkPTE3OTUzNjAmc29mdHdhcmVDaWRzPTE3NDIxMSZwbGF0Zm9ybUNpZHM9MzUmcHJvZmlsZUluc3RhbmNlQ2lkPTU1MTk1NSZkb3dubG9hZFNvdXJjZT13Z2V0JnByb2ZpbGVJbnN0YW5jZU5hbWU9T3JhY2xlIERhdGFiYXNlIEVudGVycHJpc2UgRWRpdGlvbiAxMi4xLjAuMi4wIGZvciBMaW51eCB4ODYtNjQmcGxhdGZvcm1OYW1lPUxpbnV4IHg4Ni02NCZtZWRpYUNpZD0yMjkzNjQmcmVsZWFzZUNpZD0maXNSZWxlYXNlU2VhcmNoPWZhbHNl" -O $OUTPUT_DIR/V46096-01_1of2.zip >> $LOGFILE 2>&1 



  $WGET  --user-agent="Mozilla/5.0" --no-check-certificate --load-cookies=$COOKIE_FILE --save-cookies=$COOKIE_FILE --keep-session-cookies "https://edelivery.oracle.com/osdc/download?fileName=V46096-01_2of2.zip&token=ZzZzaU5HMjYyUTd2OUs5Q0JEMnhoQSE6OiF1c2VybmFtZT1FUEQtQVpJWi5XSUJPV09ATUlJLkNPLklEJnVzZXJJZD02NzI4NTIyJmNhbGxlcj1TZWFyY2hTb2Z0d2FyZSZjb3VudHJ5SWQ9SUQmZW1haWxBZGRyZXNzPWF6aXoud2lib3dvQG1paS5jby5pZCZmaWxlSWQ9NzIxNjI5NTQmYXJ1PTE3ODQxNzUyJmFncmVlbWVudElkPTE3OTUzNjAmc29mdHdhcmVDaWRzPTE3NDIxMSZwbGF0Zm9ybUNpZHM9MzUmcHJvZmlsZUluc3RhbmNlQ2lkPTU1MTk1NSZkb3dubG9hZFNvdXJjZT13Z2V0JnByb2ZpbGVJbnN0YW5jZU5hbWU9T3JhY2xlIERhdGFiYXNlIEVudGVycHJpc2UgRWRpdGlvbiAxMi4xLjAuMi4wIGZvciBMaW51eCB4ODYtNjQmcGxhdGZvcm1OYW1lPUxpbnV4IHg4Ni02NCZtZWRpYUNpZD0yMjkzNjQmcmVsZWFzZUNpZD0maXNSZWxlYXNlU2VhcmNoPWZhbHNl" -O $OUTPUT_DIR/V46096-01_2of2.zip >> $LOGFILE 2>&1 



  $WGET  --user-agent="Mozilla/5.0" --no-check-certificate --load-cookies=$COOKIE_FILE --save-cookies=$COOKIE_FILE --keep-session-cookies "https://edelivery.oracle.com/osdc/download?fileName=V37384-01.zip&token=NFhqd2lSZjNDQ3JET3QyRkdiTFAxQSE6OiF1c2VybmFtZT1FUEQtQVpJWi5XSUJPV09ATUlJLkNPLklEJnVzZXJJZD02NzI4NTIyJmNhbGxlcj1TZWFyY2hTb2Z0d2FyZSZjb3VudHJ5SWQ9SUQmZW1haWxBZGRyZXNzPWF6aXoud2lib3dvQG1paS5jby5pZCZmaWxlSWQ9NTk0NDQ3NjUmYXJ1PTE2MDkwOTc4JmFncmVlbWVudElkPTE3OTUzNjAmc29mdHdhcmVDaWRzPTE3NDIxMSZwbGF0Zm9ybUNpZHM9MzUmcHJvZmlsZUluc3RhbmNlQ2lkPTU1MTk1NSZkb3dubG9hZFNvdXJjZT13Z2V0JnByb2ZpbGVJbnN0YW5jZU5hbWU9T3JhY2xlIERhdGFiYXNlIEVudGVycHJpc2UgRWRpdGlvbiAxMi4xLjAuMi4wIGZvciBMaW51eCB4ODYtNjQmcGxhdGZvcm1OYW1lPUxpbnV4IHg4Ni02NCZtZWRpYUNpZD05OTU1NiZyZWxlYXNlQ2lkPSZpc1JlbGVhc2VTZWFyY2g9ZmFsc2U" -O $OUTPUT_DIR/V37384-01.zip >> $LOGFILE 2>&1 

