#!bin/bash

echo " "
echo "Merged Platform Sourced Kernel"

echo"anu..... Cloning source"
git clone https://github.com/Calliope-K/Tea-WIP -b WIP-4.14

echo"Connect_to_account"
git config --global user.name "Calliope-K"
git config --global user.email "firsname76@gmail.com"

echo"anu..... Added remoting sc and tarik sist"
git remote add aurora https://source.codeaurora.org/quic/la/kernel/msm-4.14
git fetch aurora LA.UM.8.2.1.r1-06200-sdm660.0

echo"anu..... Starting"
git merge --no-commit FETCH_HEAD
git commit -m Anu-Merged-Kramel --signoff

echo"push"
git push https://$GITHUB_TOKEN@github.com/Calliope-K/Tea-WIP.git

echo " "
echo "Finished"
