sudo mkdir /mnt/funtoo
var=~/chimos-install/var/
dev="$(cat ${var}dev)"
root=/mnt/funtoo
sudo mount /dev/${dev}$(cat ${var}root) $root
sudo chmod 777 $root
mkdir ${root}/boot
sudo mount /dev/${dev}$(cat ${var}boot) ${root}/boot
cd $root
wget "$(cat ~/chimos-install/var/url)"
sudo tar --numeric-owner --xattrs --xattrs-include='*' -xpf stage3*.tar.xz
sudo mount -t proc none proc
sudo mount --rbind /sys sys
sudo mount --rbind /dev dev
sudo cp /etc/resolv.conf ${root}/etc/
sudo cp ${var}fstab ${root}/etc/
sudo ln -sf ${root}/usr/share/zoneinfo/$(cat ${var}time) ${root}/etc/localtime
#install our overlay
sudo mkdir ${root}/var/db/repos
cd ${root}/var/db/repos
sudo git clone -b funtoo https://github.com/prototype99/prototype99.git
sudo mkdir ${root}/etc/layman
sudo ln -sf ${root}/var/db/repos/prototype99/profiles-local/layman.cfg ${root}/etc/layman/layman.cfg
#enter the chroot
cd $root
sudo mv ~/chimos-install ${root}/chimos-install
sudo env -i HOME=/root TERM=$TERM chroot . bash -l