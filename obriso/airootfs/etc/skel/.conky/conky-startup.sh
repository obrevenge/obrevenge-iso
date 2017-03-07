sleep 20s
killall conky
cd "/home/$USER/.conky/OBRevenge"
conky -c "/home/$USER/.conky/OBRevenge/OBRevenge" &
cd "/home/$USER/.conky"
conky -c "/home/$USER/.conky/CB-Right.conkyrc" &
