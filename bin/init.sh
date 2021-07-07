wget "$(cat ~/chimos-install/var/url)"
sudo tar --numeric-owner --xattrs --xattrs-include='*' -xpf stage3*.tar.xz
sudo mount -t proc none proc
sudo mount --rbind /sys sys
sudo mount --rbind /dev dev
sudo cp /etc/resolv.conf /mnt/funtoo/etc/
sudo env -i HOME=/root TERM=$TERM chroot . bash -l
