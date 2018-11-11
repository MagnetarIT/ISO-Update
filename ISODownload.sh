#!/bin/sh

# Set colours
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Check ISO folder is present for the current user, create it if its not
DIRECTORY=~/"Documents/ISO"
if [ -d "$DIRECTORY" ]; then
    echo -e "${GREEN}$DIRECTORY is already present ${NC}"
else
    echo -e "${GREEN}Creating folder $DIRECTORY ${NC}"
    mkdir $DIRECTORY
fi

# Windows 10 Enterprise
URL="https://software-download.microsoft.com/download/pr/17134.1.180410-1804.rs4_release_CLIENTENTERPRISEEVAL_OEMRET_x64FRE_en-us.iso"
file="$DIRECTORY/W10_ENT_X64_1804.iso"
if [ -f "$file" ]
then
    echo -e "${GREEN}$file found. Download not required! ${NC}"
else
    echo -e "${GREEN}Downloading Windows 10 enterprise ${NC}"
    curl $URL -o $file
fi


# Windows Server 2016
URL="https://software-download.microsoft.com/download/pr/Windows_Server_2016_Datacenter_EVAL_en-us_14393_refresh.ISO"
file="$DIRECTORY/WS2016_Datacenter_EVAL_en-us_14393.iso"
if [ -f "$file" ]
then
	echo -e "${GREEN}$file found. Download not required!${NC}"
else
    echo -e "${GREEN}Downloading Windows Server 2016 ${NC}"
    curl $URL -o $file
fi

# Windows Server 2012 R2
URL="http://download.microsoft.com/download/6/2/A/62A76ABB-9990-4EFC-A4FE-C7D698DAEB96/9600.17050.WINBLUE_REFRESH.140317-1640_X64FRE_SERVER_EVAL_EN-US-IR3_SSS_X64FREE_EN-US_DV9.ISO"
file="$DIRECTORY/WS2012R2.iso"
if [ -f "$file" ]
then
	echo -e "${GREEN}$file found. Download not required!${NC}"
else
    echo -e "${GREEN}Downloading Windows Server 2012R2 ${NC}"
    curl $URL -o $file
fi



# Windows Server 2019
# https://support.microsoft.com/en-us/help/4464619/windows-10-update-history
# not available to download currently

# CentOS 7
URL="http://mirror.netweaver.uk/centos/7.5.1804/isos/x86_64/CentOS-7-x86_64-DVD-1804.iso"
file="$DIRECTORY/CentOS_7_1804.iso"
if [ -f "$file" ]
then
	echo -e "${GREEN}$file found. Download not required!${NC}"
else
    echo -e "${GREEN}Downloading CentOS 7 ${NC}"
    curl $URL -o $file
fi
