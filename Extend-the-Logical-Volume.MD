sudo df -h

#Identify the Logical Volume
lvs or lvdisplay

#Extend the Logical Volume
sudo lvextend -L +50G /dev/mapper/vol_grp1-logical_viya_vol

#Extend the filesystem
sudo xfs_growfs /dev/mapper/vol_grp1-logical_viya_vol

#Finally, verify the size of your extended partition.
sudo df -h
