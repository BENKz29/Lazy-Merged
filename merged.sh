#! /bin/bash

TAG="LA.UM.7.2.c27-03900-sdm660.0" # make sure what tag branch you need to merged x update
TYPE="merged" # make sure what do want to do if update / merged
VERSION="4.4"

git config --global user.name "Kneba"
git config --global user.email "abenkenary3@gmail.com"

if [ $VERSION = "4.4" ]
then

if [ $TYPE = "merged" ]
then
      # qcacld
      git remote add qcacld https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0
      git fetch qcacld $TAG
      git merge -s ours --no-commit --allow-unrelated-histories FETCH_HEAD
      git read-tree --prefix=drivers/staging/qcacld-3.0 -u FETCH_HEAD
      git commit -m 'Add `drivers/staging/qcacld-3.0/` from CLO tag `LA.UM.7.2.c27-03900-sdm660.0`' --signoff

      # fw-api
      git remote add fw-api https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/fw-api
      git fetch fw-api $TAG
      git merge -s ours --no-commit --allow-unrelated-histories FETCH_HEAD
      git read-tree --prefix=drivers/staging/fw-api -u FETCH_HEAD
      git commit -m 'Add `drivers/staging/fw-api/` from CLO tag `LA.UM.7.2.c27-03900-sdm660.0`' --signoff

      # qca-wifi-host-cmn
      git remote add qca-wifi-host-cmn https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn
      git fetch qca-wifi-host-cmn $TAG
      git merge -s ours --no-commit --allow-unrelated-histories FETCH_HEAD
      git read-tree --prefix=drivers/staging/qca-wifi-host-cmn -u FETCH_HEAD
      git commit -m 'Add `drivers/staging/qca-wifi-host-cmn/` from CLO tag `LA.UM.7.2.c27-03900-sdm660.0`' --signoff
fi

if [ $VERSION = "4.19" ]
then
      # techpack
      git remote add techpack https://git.codelinaro.org/clo/la/platform/vendor/opensource/audio-kernel
      git fetch techpack $TAG
      git merge -s ours --no-commit --allow-unrelated-histories FETCH_HEAD
      git read-tree --prefix=techpack -u FETCH_HEAD
      git commit -m 'Add `techpack/` from CLO tag `LA.UM.7.2.c27-03900-sdm660.0`' --signoff
fi

if [ $TYPE = "update" ]
then
      # merge qcacld
      git remote add qcacld https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/qcacld-3.0
      git fetch qcacld $TAG
      git merge -X subtree=drivers/staging/qcacld-3.0 FETCH_HEAD
      git commit -m 'Add `drivers/staging/qcacld-3.0/` from CLO tag `LA.UM.7.2.c27-03900-sdm660.0`' --signoff
      
      # merge fw-api
      git remote add fw-api https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/fw-api
      git fetch fw-api $TAG
      git merge -X subtree=drivers/staging/fw-api FETCH_HEAD
      git commit -m 'Add `drivers/staging/fw-api/` from CLO tag `LA.UM.7.2.c27-03900-sdm660.0`' --signoff
      
      # merge qca-host-wifi-cmn
      git remote add qca-wifi-host-cmn https://git.codelinaro.org/clo/la/platform/vendor/qcom-opensource/wlan/qca-wifi-host-cmn
      git fetch qca-wifi-host-cmn $TAG
      git merge -X subtree=drivers/staging/qca-wifi-host-cmn FETCH_HEAD
      git commit 'Add `drivers/staging/qca-wifi-host-cmn/` from CLO tag `LA.UM.7.2.c27-03900-sdm660.0`' --signoff
fi
