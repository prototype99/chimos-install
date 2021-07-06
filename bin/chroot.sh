sudo mount /dev/${dev}$(cat ${var}root) $root
sudo mount /dev/${dev}$(cat ${var}boot) ${root}/boot
cd $root
sudo mount -t proc none proc
sudo mount --rbind /sys sys
sudo mount --rbind /dev dev
sudo env -i HOME=/root TERM=$TERM chroot . bash -l
export PS1="(chroot) $PS1"
