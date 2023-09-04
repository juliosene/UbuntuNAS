#
# System upgrade
#
sudo apt update
sudo -y apt dist-upgrade
#
# Install ZFS
#
sudo apt-get install zfsutils-linux -y
#
# Crete a ZFS pool
#
sudo zpool create -f DATA raidz2 /dev/sda /dev/sdb /dev/sdc /dev/sdd /dev/sde
#
# Install CasaOS
#
curl -fsSL https://get.casaos.io | sudo bash
#
#
sudo apt-get install cockpit -y
sudo systemctl enable --now cockpit.socket
#
# Install extras
#
sudo apt-get install podman cockpit-podman cockpit-storaged cockpit-networkmanager cockpit-zfs  -y

