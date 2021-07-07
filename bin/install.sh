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
sudo env -i HOME=/root TERM=$TERM chroot . bash -l
