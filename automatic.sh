#!/usr/bin/env bash
rm -rf ./package/
echo "Unziping package..."
unzip ./package.zip
echo "Done! 3s..."
sleep 3
clear
cat ./package/INFO.txt
echo ""
while true; do
    read -p "Do you wish to convert your os into Vanilla Arch? (Yes/No)" yn
    case $yn in
        [Yy]* ) echo "Okay" && bash ./package/to-arch.sh && bash ./package/PostInstallScript.sh; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done