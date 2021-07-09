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
#install layman
layman=~/chimos-install/bin/
#layman libraries
sudo ln -sf ${layman}bin/layman/usr/lib/python3.7/site-packages/layman ${root}/bin/layman/usr/lib/python3.7/site-packages/layman
#layman portage plug in
sudo ln -sf ${layman}bin/layman/usr/lib/python3.7/site-packages/portage/sync/modules/laymansync ${root}/bin/layman/usr/lib/python3.7/site-packages/portage/sync/modules/laymansync
#layman executable
sudo ln -sf ${layman}usr/lib/python-exec/python3.7/layman ${root}/usr/lib/python-exec/python3.7/layman
#layman man pages
sudo ln -sf ${layman}usr/share/man/man8/layman.8.bz2 ${root}/usr/share/man/man8/layman.8.bz2
#install paludis
#install our overlay
mkdir ${root}/var/db/repos
cd ${root}/var/db/repos
sudo git clone -b funtoo https://github.com/prototype99/prototype99.git
sudo ln -sf ${root}/var/db/repos/prototype99/profiles-local/layman.cfg ${root}/etc/layman/layman.cfg
#enter the chroot
sudo env -i HOME=/root TERM=$TERM chroot . bash -l
