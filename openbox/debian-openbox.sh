#!/bin/bash
#
# Debian testing - Openbox

clear

echo "Lembre-se de estar logado como root!"
echo "Digite o nome de usuario da maquina:"
read LOGIN

#-- UPDATE AND UPGRADE
apt-get update && apt-get upgrade -y

#-- XORG INSTALL
apt-get install xorg -y
#-- CONFIG XORG
X -configure
cp ~/xorg.conf.new /etc/X11/xorg.conf

#-- SYNAPTICS INSTALL
apt-get install xserver-xorg-input-synaptics -y
#-- CONFIG SYNAPTICS
cp ~/comandos/openbox/70-synaptics.conf /usr/share/X11/xorg.conf.d/.

#-- OPENBOX INSTALL
apt-get install openbox openbox-menu compton slim tint2 pcmanfm gpicview conky -y

#-- NETWORK INSTALL
apt-get install network-manager network-manager-gnome -y

#-- LXTERMINAL GMRUM
apt-get install lxterminal gmrun -y

#-- CONFIG OPENBOX
mkdir /home/$LOGIN/Imagens
mkdir /home/$LOGIN/.config
mkdir /home/$LOGIN/.config/tint2
mkdir /home/$LOGIN/.fonts
mkdir /home/$LOGIN/.config/pcmanfm
mkdir /home/$LOGIN/.config/pcmanfm/default
cp ~/comandos/openbox/bg.jpg /home/$LOGIN/Imagens/.
cp ~/comandos/openbox/compton.conf /home/$LOGIN/.compton.conf
cp ~/comandos/openbox/xinitrc /home/$LOGIN/.xinitrc
cp ~/comandos/openbox/tint2rc /home/$LOGIN/.config/tint2/tint2rc
cp ~/comandos/openbox/slim.conf /etc/slim.conf
mkdir /home/$LOGIN/.config/openbox
cp ~/comandos/openbox/configs/* /home/$LOGIN/.config/openbox/.
cp -r ~/comandos/openbox/archlinux-simplyblack /usr/share/slim/themes/
cp ~/comandos/openbox/conkyrc /home/$LOGIN/.conkyrc
cp ~/comandos/openbox/fonts/* /home/$LOGIN/.fonts/.
cp ~/comandos/openbox/desktop-items-0.conf /home/$LOGIN/.config/pcmanfm/default/.
cp ~/comandos/openbox/pcmanfm.conf /home/$LOGIN/.config/pcmanfm/default/.
chown -R gnew.gnew /home/$LOGIN/
