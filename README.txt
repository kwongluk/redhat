# redhat - install gui
dnf group list

dnf groupinstall workstation

systemctl set-default graphical.target

systemctl isolate graphical.target

