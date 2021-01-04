#! /bin/bash
#Ahhh-This-Lol-Script

echo " "
echo "Merged Platform Sourced Kernel"

#Connect_to_account
git config --global user.name "Calliope-K"
git config --global user.email "firsname76@gmail.com"

#Execute_Script_Merged_qcacld
git remote add qcacld https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0
git fetch qcacld LA.UM.7.2.r1-09600-sdm660.0
git merge -s ours --no-commit FETCH_HEAD --allow-unrelated-histories
git read-tree --prefix=drivers/staging/qcacld-3.0 -u FETCH_HEAD
git commit -m Qcacld-3.0 --signoff

#Fw_api
git remote add fw-api https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/fw-api
git fetch fw-api LA.UM.7.2.r1-09600-sdm660.0
git merge -s ours --no-commit FETCH_HEAD --allow-unrelated-histories
git read-tree --prefix=drivers/staging/fw-api -u FETCH_HEAD
git commit -m Fw-Api --signoff

#Qca_wifi_host_cmn
git remote add qca-wifi-host-cmn https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn
git fetch qca-wifi-host-cmn LA.UM.7.2.r1-09600-sdm660.0
git merge -s ours --no-commit FETCH_HEAD --allow-unrelated-histories
git read-tree --prefix=drivers/staging/qca-wifi-host-cmn -u FETCH_HEAD
git commit -m Qca-Wifi-Host --signoff

#Push
git push https://$GITHUB_TOKEN@github.com/Calliope-K/Tea-WIP.git

echo " "
echo "Finished"
