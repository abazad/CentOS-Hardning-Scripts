#!/bin/bash
#title		:update-script.sh
#description	:this script will check and apply the system updates
#author		:Rayan Alfaheid
#date		:10-feb-2016
#version	:1.0
#usage		:bash update-script.sh
#notes		:run it via run.sh script if you need to do the full hardning.
#===============================================================================
echo "*************************************************************************"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "this script has been ran at:"  
date
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

echo "*************************************************************************"
# [item-02] --  Checking for System Updates
echo "[Update]--- Start Cheaking for the updates ---"
sudo yum check-update
echo "[Update]--- End Cheaking for the updates ---"
echo "*************************************************************************"
# [item-02] --  Checking for System Updates
echo "[Update]--- Start Applying the updates ---"
sudo yum update
echo "[Update]--- End Cheaking for the updates ---"
echo "*************************************************************************"
