#!/bin/bash
#title		:disable-services-script.sh
#description	:this script will disable all of the unneeded services in the OS
#author		:Rayan Alfaheid
#date		:11-feb-2016
#version	:1.0
#usage		:bash disable-services-script.sh
#notes		:run it via run.sh script if you need to do the full hardning.
#===============================================================================

echo "*************************************************************************"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "this script has been ran at:"  
date
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

echo "*************************************************************************"
# [item-32] --  Disabling Avahi Server
echo "[legacy]--------- Start Disabling Avahi Server --------------------------"
systemctl is-enabled avahi-daemon
sudo systemctl disable avahi-daemon
systemctl is-enabled avahi-daemon
echo "[legacy]--------- End Disabling Avahi Server ----------------------------"
echo "========================================================================="
#===============================================================================
# [item-33] --  Disabling Print Server CUPS
echo "[legacy]--------- Start Disabling Print Server CUPS ---------------------"
systemctl is-enabled cups
sudo systemctl disable cups
systemctl is-enabled cups
echo "[legacy]--------- End Disabling Print Server CUPS  ----------------------"
echo "========================================================================="
#===============================================================================
# [item-34] --  Removing DHCP Server
echo "[legacy]--------- Start Removing DHCP Server -------------------------"
rpm -q dhcp
sudo yum erase dhcp
echo "[legacy]--------- End Removing DHCP Server ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-35] --  Configuring the NTP
echo "[legacy]--------- Start Configuring the NTP -----------------------------"
grep "restrict default" /etc/ntp.conf 
grep "restrict -6 default" /etc/ntp.conf
grep "^server" /etc/ntp.conf
grep "ntp:ntp" /etc/sysconfig/ntpd
restrict default kod nomodify notrap nopeer noquery
echo "[legacy]--------- End Configuring the NTP -------------------------------"
echo "========================================================================="
#===============================================================================
# [item-37] --  Disabling NFS and RPC
echo "[legacy]--------- Start Disabling NFS and RPC -------------------------"
systemctl is-enabled nfslock
systemctl is-enabled rpcgssd
systemctl is-enabled rpcbind
systemctl is-enabled rpcidmapd
systemctl is-enabled rpcsvcgssd
sudo systemctl disable nfslock
sudo systemctl disable rpcgssd
sudo systemctl disable rpcbind
sudo systemctl disable rpcidmapd
sudo systemctl disable rpcsvcgssd
systemctl is-enabled nfslock
systemctl is-enabled rpcgssd
systemctl is-enabled rpcbind
systemctl is-enabled rpcidmapd
systemctl is-enabled rpcsvcgssd
echo "[legacy]--------- End Disabling NFS and RPC ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-38] --  Removing DNS Server
echo "[legacy]--------- Start Removing DNS Server -------------------------"
rpm -q bind
sudo yum erase bind
echo "[legacy]--------- End Removing DNS Server ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-39] --  Removing FTP Server
echo "[legacy]--------- Start Removing FTP Server -------------------------"
rpm -q vsftpd
sudo yum erase vsftpd
echo "[legacy]--------- End Removing FTP Server ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-40] --  Removing HTTP Server
echo "[legacy]--------- Start Removing HTTP Server -------------------------"
rpm -q httpd
sudo yum erase httpd
echo "[legacy]--------- End Removing HTTP Server ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-41] --  Removing DOVECOT
echo "[legacy]--------- Start Removing DOVECOT -------------------------"
rpm -q dovecot
sudo yum erase dovecot
echo "[legacy]--------- End Removing DOVECOT ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-43] --  Removing HTTP Proxy Server
echo "[legacy]--------- Start Removing HTTP Proxy Server ----------------------"
rpm -q squid
sudo yum erase squid
echo "[legacy]--------- End Removing HTTP Proxy Server ------------------------"
echo "========================================================================="
#===============================================================================
# [item-44] --  Removing SNMP Server
echo "[legacy]--------- Start Removing SNMP Server -------------------------"
rpm -q net-snmp
sudo yum erase net-snmp
echo "[legacy]--------- End Removing SNMP Server ---------------------------"
echo "========================================================================="
#===============================================================================
# [item-45] --  Changing Mail transfer agent for Local-Only Mode
echo "[legacy]---- Start Changing Mail transfer agent for Local-Only Mode -----"
# varfy that that the file /etc/postfix/main.cf is set to have:
# inet_interfaces = localhost
netstat -an | grep LIST | grep ":25[[:space:]]"
echo "[legacy]----- End Changing Mail transfer agent for Local-Only Mode ------"
echo "========================================================================="
#===============================================================================
