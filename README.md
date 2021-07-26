# notice
DidOS is currently only designed for uefi systems with a btrfs root and partition labels. feel free to request more unusual configurations obviously. some efforts have been made to add some flexibility via the var folder. It is recommended that you keep a backup OS. some software will be badly installed during the installation process, if you can find some kind of binary that would be cool, i just copied files; it is symlinked so installation should replace the files easily
# extra tools
## chroot.sh
use this to restore the chroot. in other words, how you access the OS without booting into it.
# instructions
0. run this to establish a resource folder and get in the correct folder: cd ~ && git clone https://github.com/prototype99/didos-install.git && cd ~/didos-install/bin
1. create a fat32 boot partition with the esp flag. recommended size is around 200mb. if such a partition already exists it is recommended to use it.
2. create a swap partition roughly equal to your ram
3. create a btrfs root partition
4. make sure all partitions have labels if you want them to, the assumption is made that you do
5. make sure that in the var direcctory dev is your device prefix, boot is your boot partition number and root is your root partition number
6. find a suitable stage 3 (set of base files) at https://www.funtoo.org/Subarches and save the download url to the url file in the aforementioned folder
7. make sure the fstab file is correct for your system
8. make sure time matches the desired file in /usr/share/zoneinfo
9. run ./init.sh
10. run cd /didos-install/bin && ./inst.sh
11. run useradd -m seirra where seirra is the username, in later entries the assumption is made that you used that username so replace as necessary
12. run passwd to set a root password
13. run usermod -G wheel,audio seirra to add the user to all necessary groups
14. run passwd seirra to set a user password
15. run su - seirra