apt update && apt upgrade -y && pkg install wget -y && pkg install tsu -y && pkg install proot -y && pkg install git -y
git clone https://github.com/MFDGaming/ubuntu-in-termux.git
cd ubuntu-in-termux
chmod +x ubuntu.sh
bash ubuntu.sh -y
bash startubuntu.sh


