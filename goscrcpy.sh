#!/bin/bash
# console colors 2021-10-03 11:04:37
GREEN='\033[0;32m'   #printf "${LRED}File not found :'${1}'${NC}\n"
LGREEN='\033[1;32m'  #printf " Set executable rights for : ${YELL}\"$realpath\" ${NC}\n"
WHITE='\033[1;37m'
YELL='\033[1;33m'
RED='\033[0;31m'
LRED='\033[1;31m'
MAG='\033[0;35m'
LMAG='\033[1;35m'
CYAN='\033[0;36m'
LCYAN='\033[1;36m'
NC='\033[0m' # No Color


tcpip=192.168.0.76:5554
tcpip2=192.168.0.77:5554

resp=$(adb connect $tcpip) 
### possible responses :
#connected to '192.168.0.xx:555x': No route to host
#failed to connect to '192.168.0.xx:555x': No route to host
#already connected to 192.168.0.xx:555x
printf "${CYAN} $resp  ${NC}\n"
if [ "${resp:0:9}" = "connect" ] ; then
    printf "${GREEN} scrcpy --tcpip=$tcpip ${NC}\n"
    scrcpy --tcpip=$tcpip
else
printf "${GREEN} scrcpy --tcpip=$tcpip2 ${NC}\n"
    scrcpy --tcpip=$tcpip2
fi

#scrcpy --tcpip=$tcpip