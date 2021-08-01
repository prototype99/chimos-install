var=../var/
sudo mount /dev/$(cat ${var}dev)$(cat ${var}boot) ../../boot
cd ../..
sudo mount -t proc none proc
sudo mount --rbind /sys sys
sudo mount --rbind /dev dev
sudo env -i HOME=/root TERM=$TERM chroot . bash -l
export PS1="(chroot) $PS1"