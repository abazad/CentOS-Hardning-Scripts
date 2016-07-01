#!/bin/bash
#title		:remove-legacy-sys-script.sh
#description	:this script will remove all of the legacy systems in the OS.
#author		:Rayan Alfaheid
#date		:10-feb-2016
#version	:1.0
#usage		:bash remove-legacy-sys-script.sh
#notes		:run it via run.sh script if you need to do the full hardning.
#===============================================================================
echo "*************************************************************************"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "this script has been ran at:"  
date
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

echo "========================================================================="
# [item-14] --  Removing Telnet-Server
echo "[legacy]--------- Start Removing Telnet-Servers -------------------------"
rpm -q telnet-server
sudo yum erase telnet-server
echo "[legacy]--------- End Removing Telnet-Servers ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-15] --  Removing Telnet Client
echo "[legacy]--------- Start Removing Telnet Client -------------------------"
rpm -q telnet
sudo yum erase telnet
echo "[legacy]--------- End Removing Telnet Client ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-16] --  Removing RSH-Server
echo "[legacy]--------- Start Removing RSH-Server -------------------------"
rpm -q rsh-server
sudo yum erase rsh-server
echo "[legacy]--------- End Removing RSH-Server ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-17] -- Removing RSH
echo "[legacy]--------- Start Removing RSH -------------------------"  
rpm -q rsh
sudo yum erase rsh
echo "[legacy]--------- End Removing RSH ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-18] --  Removing NIS Client
echo "[legacy]--------- Start Removing NIS Client -------------------------"
rpm -q ypbind
sudo yum erase ypbind
echo "[legacy]--------- End Removing NIS Client ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-19] -- Removing NIS Server
echo "[legacy]--------- Start Removing NIS Server -------------------------"
rpm -q ypserv
sudo yum erase ypserv
echo "[legacy]--------- End Removing NIS Server ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-20] --  Removing TFTP
echo "[legacy]--------- Start Removing TFTP -------------------------"
rpm -q tftp
sudo yum erase tftp
echo "[legacy]--------- End Removing TFTP ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-21] -- Removing TFTP Server
echo "[legacy]--------- Start Removing TFTP-Servers -------------------------"  
rpm -q tftp-server
sudo yum erase tftp-server
echo "[legacy]--------- End Removing TFTP-Servers ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-22] --  Removing Talk
echo "[legacy]--------- Start Removing Talk -------------------------"
rpm -q talk
sudo yum erase talk
echo "[legacy]--------- End Removing Talk ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-23] -- Removing Talk Server
echo "[legacy]--------- Start Removing Talk-Servers -------------------------"
rpm -q talk-server
sudo yum erase talk-server
echo "[legacy]--------- End Removing Talk-Servers ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-25] -- Disabling chargen-dgram
echo "[legacy]--------- Start Disabling chargen-dgram -------------------------"
rpm -q chargen-dgram
chkconfig --list chargen-dgram
chkconfig chargen-dgram off
echo "[legacy]--------- End Disabling chargen-dgram ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-26] -- Disabling chargen-stream
echo "[legacy]--------- Start Disabling chargen-stream -------------------------"
rpm -q chargen-stream
chkconfig --list chargen-stream
chkconfig chargen-stream off
echo "[legacy]--------- End Disabling chargen-stream ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-27] -- Disabling daytime-dgram
echo "[legacy]--------- Start Disabling daytime-dgram -------------------------"
rpm -q daytime-dgram
chkconfig --list daytime-dgram
chkconfig daytime-dgram off
echo "[legacy]--------- End Disabling daytime-dgram ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-28] -- Disabling daytime-stream
echo "[legacy]--------- Start Disabling daytime-stream -------------------------"
rpm -q daytime-stream
chkconfig --list daytime-stream
chkconfig daytime-stream off
echo "[legacy]--------- End Disabling daytime-stream ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-29] -- Disabling echo-dgram
echo "[legacy]--------- Start Disabling echo-dgram -------------------------"
rpm -q echo-dgram
chkconfig --list echo-dgram
chkconfig echo-dgram off
echo "[legacy]--------- End Disabling echo-dgram ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-30] -- Disabling echo-stream
echo "[legacy]--------- Start Disabling echo-stream -------------------------"
rpm -q echo-stream
chkconfig --list echo-stream
chkconfig echo-stream off
echo "[legacy]--------- End Disabling echo-stream ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-31] -- Disabling chargen-stream
echo "[legacy]--------- Start Disabling chargen-stream -------------------------"
rpm -q tcpmux-server
chkconfig --list tcpmux-server
chkconfig tcpmux-server off
echo "[legacy]--------- End Disabling chargen-stream ---------------------------"
echo "-------------------------------------------------------------------------"
echo "========================================================================="
#===============================================================================
