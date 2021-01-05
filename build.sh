#!bin/bash

#evirontment
echo "plugin L2TP.ppp">>/etc/ppp/options 
echo "l2tpnoipsec">>/etc/ppp/options

#trigger
chmod 700 ~/path/to/l2tp.sh

#start
sudo ~/path/to/l2tp.sh
chmod u+x run_l2tp.command

#cloning
git clone https://github.com/Calliope-K/build-tools-gcc
cd build-tools-gcc

#start
./build -a arm64 -s linaro -v 7 -V
