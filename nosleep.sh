sudo leafpad /etc/lightdm/lightdm.conf
#If you want to disable the blank screen at every startup, just update the /etc/lightdm/lightdm.conf file and add in the [SeatDefaults] section the following command:
#[SeatDefaults]
#xserver-command=X -s 0 -dpms