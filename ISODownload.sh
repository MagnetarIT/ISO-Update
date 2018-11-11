#!/bin/sh

# Check ISO folder is present for the current user, create it if its not
DIRECTORY=~/"Documents/ISO"
if [ -d "$DIRECTORY" ]; then
    echo "$DIRECTORY is already present"
else
    echo "Creating folder $DIRECTORY"
    mkdir $DIRECTORY
fi

# Windows 10 Enterprise
URL="https://software-download.microsoft.com/download/pr/17134.1.180410-1804.rs4_release_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us.iso"
curl $URL -o $DIRECTORY/W10_ENT_X64_1804.iso 

# Windows Server 2016
URL="https://software-download.microsoft.com/download/pr/Windows_Server_2016_Datacenter_EVAL_en-us_14393_refresh.ISO"
curl $URL -o $DIRECTORY/WS2016_Datacenter_EVAL_en-us_14393.iso 

# Windows Server 2012 R2
URL="http://download.microsoft.com/download/6/2/A/62A76ABB-9990-4EFC-A4FE-C7D698DAEB96/9600.17050.WINBLUE_REFRESH.140317-1640_X64FRE_SERVER_EVAL_EN-US-IR3_SSS_X64FREE_EN-US_DV9.ISO"
curl $URL -o $DIRECTORY/WS2012R2.iso 

# Windows Server 2019
# https://support.microsoft.com/en-us/help/4464619/windows-10-update-history
# not available to download currently

# CentOS 7
URL="http://mirror.netweaver.uk/centos/7.5.1804/isos/x86_64/CentOS-7-x86_64-DVD-1804.iso"
curl $URL -o $DIRECTORY/CentOS_7_1804.iso 
