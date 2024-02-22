#Thinkpad fingerprint driver
#Made by ghostblackout

clear
echo 'This will install Thinkpad fingerprint driver v1.0 '
echo 'you will need to enter your root password'
echo 'Press any key to continue'
read -s -n 1

#This will install git and yay


cd /home/$USER
sudo pacman -Sy --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

#This will install the fingerprint software then enrol your fingerprint

yay -S python-validity-git
sudo validity-sensors-firmware
sudo systemctl start python3-validity
fprintd-enroll
