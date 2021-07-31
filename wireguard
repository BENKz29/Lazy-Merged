#! /bin/bash
#Ahhh-This-Lol-Script

echo " "
echo "Merged Wireguard Sourced Kernel"

#Wire
git remote add Guard https://git.zx2c4.com/wireguard-linux
git fetch Guard stable
git merge --no-commit FETCH_HEAD
git commit -m "Importing Wireguard" --signoff

#Push
git push

echo " "
echo "Finished"
