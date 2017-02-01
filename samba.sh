sudo apt-get install samba samba-common-bin -y
# backup smb.conf
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf_bk
# set new smb.conf
# ./smb.conf content:
# ----------------------------------------
# workgroup = your_workgroup_name
# wins support = yes
# [pihome]
#   comment= Pi Home
#   path=/home/pi
#   browseable=Yes
#   writeable=Yes
#   only guest=no
#   create mask=0777
#   directory mask=0777
#   public=Yes
# ------------------------------------------
sudo cp ./smb.conf /etc/samba/smb.conf
# set password
sudo smbpasswd -a pi
# restart samba
sudo /etc/init.d/samba restart
