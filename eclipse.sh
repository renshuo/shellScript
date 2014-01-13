#!/bin/sh
source profile
source bw451env.sh
source jdk7env.sh

export GTK_RC_FILES=/etc/gtk/gtkrc:/home/sren/.gtkrc:/home/sren/.kde4/share/config/gtkrc
export GTK2_RC_FILES=/etc/gtk-2.0/gtkrc:/home/sren/.gtkrc-2.0:/home/sren/.gtkrc-2.0-kde4:/home/sren/.kde4/share/config/gtkrc-2.0

cd /home/bin/eclipse/eclipse/
./eclipse
