#! /bin/bash
#Ahhh-This-Lol-Script

echo " "
echo "Merged Wireguard Sourced Kernel"

#Connect_to_account
git config --global user.name "Calliope-K"
git config --global user.email "firsname76@gmail.com"

#anu kernel
git clone https://$GITHUB_TOKEN@github.com/Calliope-K/TEA-PROJECT -b 42
cd TEA-PROJECT

#Wire
git remote add Guard https://git.zx2c4.com/wireguard-linux
git fetch Guard stable
git merge --no-commit FETCH_HEAD
git commit -m "Importing Wireguard" --signoff

#Push
git push https://$GITHUB_TOKEN@github.com/Calliope-K/TEA-PROJECT.git

echo " "
echo "Finished"
