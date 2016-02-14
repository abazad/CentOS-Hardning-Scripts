#!/bin/bash
#title		:run-script.sh
#description	:this script will run all of the other system hardning scripts.
#author		:Rayan Alfaheid
#date		:10-feb-2016
#version	:1.0
#usage		:bash run-script.sh
#notes		:run it to do the hardning in just one script.
#===============================================================================
exec > >(tee -i ../logs/run-script.log)
echo "*************************************************************************"
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "this script has been ran at:"  
date
echo "+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

echo "*************************************************************************"
# [script-01] --  Running the update-script
echo "[Update]--- Start update-script ---"
sudo ./update-script.sh | tee -a ../logs/update-script.log
echo "[Update]--- End update-script ---"
echo "*************************************************************************"
# [script-02] --  Running the remove-legacy-sys-script
echo "[Update]--- Start remove-legacy-sys-script ---"
sudo ./remove-legacy-sys-script.sh | tee -a ../logs/remove-legacy-sys.log
echo "[Update]--- End remove-legacy-sys-script ---"
echo "*************************************************************************"
