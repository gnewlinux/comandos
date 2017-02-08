#!/bin/bash
#
# Debian testing - Openbox

clear

echo "Lembre-se de estar logado como root!"
echo "Digite o nome de usuario da maquina:"
read LOGIN

#-- CONFIG OPENBOX
mkdir /home/$LOGIN/.config/pcmanfm
mkdir /home/$LOGIN/.config/pcmanfm/default
cp ~/comandos/openbox/bg.jpg /home/$LOGIN/Imagens/.
cp ~/comandos/openbox/compton.conf /home/$LOGIN/.compton.conf
cp ~/comandos/openbox/xinitrc /home/$LOGIN/.xinitrc
cp ~/comandos/openbox/desktop-items-0.conf /home/$LOGIN/.config/pcmanfm/default/.
cp ~/comandos/openbox/pcmanfm.conf /home/$LOGIN/.config/pcmanfm/default/.
chown -R gnew.gnew /home/$LOGIN/
