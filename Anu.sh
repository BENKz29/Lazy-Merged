#!bin/bash

echo " "
echo "Merged Platform Sourced Kernel"

echo " "
echo "anu..... Cloning source"
echo " "
git clone https://github.com/vcyzteen/Tea-WIP -b WIP-4.14
cd Tea-WIP

echo " "
echo "Connect_to_account"
echo " "
git config --global user.name "vcyzteen"
git config --global user.email "firsname76@gmail.com"

echo " "
echo "anu..... Added remoting sc and tarik sist"
echo " "
git remote add aurora https://source.codeaurora.org/quic/la/kernel/msm-4.14
git fetch aurora LA.UM.8.2.1.r1-06200-sdm660.0

echo " "
echo "anu..... Starting"
echo " "
git merge --no-commit FETCH_HEAD
git commit -m "Anu-Merged-Kramel" --signoff

echo "push"
echo " "
git push https://$GITHUB_TOKEN@github.com/vcyzteen/Tea-WIP.git

echo " "
echo "Finished"
echo " "
