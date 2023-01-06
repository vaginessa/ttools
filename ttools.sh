#/bin/bash

## Colors
    BBlack='\033[1;30m'       # Black
    BRed='\033[1;31m'         # Red
    BGreen='\033[1;32m'       # Green
    BYellow='\033[1;33m'      # Yellow
    BBlue='\033[1;34m'        # Blue
    BPurple='\033[1;35m'      # Purple
    BCyan='\033[1;36m'        # Cyan
    BWhite='\033[1;37m'       # White
    CO='\033[0m'       # Text Reset

clear
printf "${BBlue}============================================================\n"
printf "${BBlue}============================================================\n"
printf "${BBlue}== ${CO}______ Termux Hacking Tools Installation Script _____ ${BBlue}===\n"
printf "${BBlue}=== ${CO}by YusufAlperenSEC | Version v2.5 __________________ ${BBlue}===\n"
printf "${BBlue}============================================================\n"
printf "${BBlue}============================================================\n"
sleep 1
printf "${BYellow}Press CTRL+C to abort in 5 seconds.\n"
sleep 5
printf "${BGreen}Starting...\n"
printf "${BGreen}Estimated time: 25-30mins.\n"
sleep 2
clear
printf "${BBlue}[${BWhite}1${BBlue}]${CO} wget installation\n"
sleep 1
yes | pkg update
yes | pkg install wget
clear
printf "${BBlue}[${BWhite}2${BBlue}]${CO} Essential tools installation\n"
sleep 1
yes | pkg update
yes | pkg upgrade
yes | pkg install root-repo
yes | pkg install -y tsu bettercap nmap wireless-tools iw ethtool tcpdump
yes | pkg install -y binutils python autoconf bison clang coreutils curl findutils apr apr-util postgresql openssl readline libffi libgmp libpcap libsqlite libgrpc libtool libxml2 libxslt ncurses make ncurses-utils ncurses git wget unzip zip tar termux-tools termux-elf-cleaner pkg-config git ruby -o Dpkg::Options::="--force-confnew"
python3 -m pip install --upgrade pip
python3 -m pip install requests
clear
printf "${BBlue}[${BWhite}3${BBlue}]${CO} Password cracking tools installation\n"
sleep 1
cd /data/data/com.termux/files/usr/include
git clone https://github.com/vanhauser-thc/thc-hydra
cd thc-hydra
bash configure
make
cd /data/data/com.termux/files/usr/include
git clone https://github.com/openwall/john
cd john/src
bash configure --prefix=/data/data/com.termux/files/usr
make -s clean && make -sj4
cd /data/data/com.termux/files/usr/include/john/run
mkdir /data/data/com.termux/files/usr/share/john
cp -r * /data/data/com.termux/files/usr/share/john
cd ~
clear
printf "${BBlue}[${BWhite}4${BBlue}]${CO} Assigning symlinks..\n"
ln -sf /data/data/com.termux/files/usr/include/thc-hydra/hydra /data/data/com.termux/files/usr/bin/hydra
ln -sf /data/data/com.termux/files/usr/include/john/run/john /data/data/com.termux/files/usr/bin/john
ln -sf /data/data/com.termux/files/usr/include/john/run/unshadow /data/data/com.termux/files/usr/bin/unshadow
chmod 777 /data/data/com.termux/files/usr/bin/john
chmod 777 /data/data/com.termux/files/usr/bin/unshadow
chmod 777 /data/data/com.termux/files/usr/bin/hydra
printf "${BGreen}[${BWhite}+${BGreen}]${CO} Assigned!\n"
sleep 1
cd ~
clear
printf "${BBlue}============================================================\n"
printf "${BBlue}============================================================\n"
printf "${BBlue}============================================================\n"
printf "${BBlue}=================== ${CO}Installation completed ${BBlue}=================\n"
printf "${BBlue}============================================================\n"
printf "${BBlue}=== ${CO}by YusufAlperenSEC _________________________________ ${BBlue}===\n"
printf "${BBlue}============================================================\n"
