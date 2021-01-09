#!bin/bash

echo " "
echo "Merged Platform Sourced Kernel"

#Connect_to_account
git config --global user.name "Calliope-K"
git config --global user.email "firsname76@gmail.com"

#anu..... Added remoting sc and tarik sist
git remote add aurora https://source.codeaurora.org/quic/la/kernel/msm-4.14
git fetch aurora LA.UM.8.2.1.r1-06200-sdm660.0

#anu.....
git merge --no-commit FETCH_HEAD
git commit -m Anu-Merged-Kramel --signoff

#Push
git push https://$GITHUB_TOKEN@github.com/Calliope-K/Tea-WIP.git

echo " "
echo "Finished"
