var=/chimos-install/var/
user="$(cat ${var}user)"
useradd -m $user
echo -e "$(cat ${var}rpasswd)" | passwd
rm ${var}rpasswd
usermod -G wheel,audio,plugdev $user
echo -e "$(cat ${var}upasswd)" | passwd $user
rm ${var}upasswd
su - $user