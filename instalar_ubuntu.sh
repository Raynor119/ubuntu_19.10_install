apt update && apt upgrade -y && pkg install wget -y && pkg install tsu -y && pkg install proot -y && pkg install git -y
git clone https://github.com/MFDGaming/ubuntu-in-termux.git
cd ubuntu-in-termux
chmod +x ubuntu.sh
bash ubuntu.sh -y
bash startubuntu.sh
su
apt update && apt upgrade -y && apt install sudo
sudo apt-get install language-pack-es -y
sudo apt-get install aspell-es -y
sudo apt-get install myspell-es -y
sudo apt-get install manpages-es -y
sudo apt-get update 
sudo apt install udisks2 -y 
echo "" > /var/lib/dpkg/info/udisks2.postinst 
sudo dpkg --configure -a 
sudo apt-mark hold udisks2 
sudo apt-get install xfce4 xfce4-goodies xfce4-terminal exo-utils tigervnc-standalone-server tigervnc-common dbus-x11 --no-install-recommends -y 
sudo apt-get clean 
mkdir -p ~/.vnc
wget https://raw.githubusercontent.com/Raynor119/ubuntu_19.10_install/master/xstartup -P ~/.vnc/
wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/APT/XFCE4/vncserver-start -P /usr/local/bin/
wget https://raw.githubusercontent.com/Techriz/AndronixOrigin/master/APT/XFCE4/vncserver-stop -P /usr/local/bin/
chmod +x ~/.vnc/xstartup 
chmod +x /usr/local/bin/vncserver-start 
chmod +x /usr/local/bin/vncserver-stop 


echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile
vncpasswd
