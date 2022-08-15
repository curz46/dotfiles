# pacstrap /mnt base linux-zen linux-firmware intel-ucode
pacman -Syyu dhcpcd netctl wpa_supplicant dialog man-db
# use ntfs drives + microphone firmware
pacman -Syyu ntfs-3g sof-firmware
# wayland compositor
pacman -Syyu sway swaybg xorg-xwayland waylock
# terminal emulator
pacman -Syyu ttf-hack alacritty
# file manager
pacman -Syyu nemo

pacman -Syyu --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
cd ..
rm yay-bin -rf

yay -Syyu microsoft-edge-stable-bin 
yay -Syyu dmemu-wayland-git # wayland port of dmenu
yay -Syyu wlsunset
