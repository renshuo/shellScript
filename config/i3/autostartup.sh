#!/bin/sh
pcname=$(hostname)


laptopstart () {
	echo "start laptop app"
	fcitx5 &
  pasystray &
  nm-applet &
  blueman-applet &
  dunst &
  # jgmenu_run &
  # polybar -r -c $HOME/.config/i3/polybar/config polybar &
  /home/bin/0bin/config/screenConfig.sh &
  nutstore &
}

workpcstart () {
	echo "start workpc app"
}

if [ $pcname = 'sren-pc' ] 
then
	  laptopstart
else
	  workpcstart
fi



