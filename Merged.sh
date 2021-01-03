#Ahhh-This-Lol-Script

git config --global user.name "Calliope-K"
git config --global user.email "firsname76@gmail.com"
git clone https://github.com/Calliope-K/Tea-WIP -b WIP-4.14
cd Tea-WIP
git remote add qcacld https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0
git fetch qcacld LA.UM.7.2.r1-09600-sdm660.0
git merge -s ours --no-commit FETCH_HEAD --allow-unrelated-histories
git read-tree --prefix=drivers/staging/qcacld-3.0 -u FETCH_HEAD
git commit -m Qcacld-3.0 --signoff
git remote add fw-api https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/fw-api
git fetch fw-api LA.UM.7.2.r1-09600-sdm660.0
git merge -s ours --no-commit FETCH_HEAD --allow-unrelated-histories
git read-tree --prefix=drivers/staging/fw-api -u FETCH_HEAD
git commit -m Fw-Api --signoff
git remote add qca-wifi-host-cmn https://source.codeaurora.org/quic/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn
git fetch qca-wifi-host-cmn LA.UM.7.2.r1-09600-sdm660.0
git merge -s ours --no-commit FETCH_HEAD --allow-unrelated-histories
git read-tree --prefix=drivers/staging/qca-wifi-host-cmn -u FETCH_HEAD
git commit -m Qca-Wifi-Host --signoff
git push https://$GITHUB_TOKEN@github.com/Calliope-K/Tea-WIP.git
