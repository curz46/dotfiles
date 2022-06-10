# pacstrap /mnt base linux-zen linux-firmware intel-ucode
pacman -Syyu dhcpcd netctl wpa_supplicant dialog man-db
pacman -Syyu ntfs-3g sof-firmware
pacman -Syyu sway swaybg dmenu-wayland-git
pacman -Syyu ttf-hack alacritty wlsunset

pacman -Syyu --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ..
rm yay-bin -rf

yay -Syyu microsoft-edge-stable-bin 
