#notice
ChimOS is currently only designed for uefi systems with a btrfs root and partition labels. feel free to request more unusual configurations obviously. some efforts have been made to add some flexibility via the var folder. It is recommended that you keep a backup OS.
#extra tools
##chroot.sh
use this to restore the chroot. in other words, how you access the OS without booting into it.
#instructions
0. run this to establish a resource folder and get in the correct folder: cd ~ && git clone https://github.com/prototype99/chimos-install.git && cd ~/chimos-install/bin
1. create a fat32 boot partition with the esp flag. recommended size is around 200mb. if such a partition already exists it is recommended to use it.
2. create a swap partition roughly equal to your ram
3. create a btrfs root partition
4. make sure all partitions have labels if you want them to, the assumption is made that you do
5. make sure that in the var direcctory dev is your device prefix, boot is your boot partition number and root is your root partition number
6. find a suitable stage 3 (set of base files) at https://www.funtoo.org/Subarches and save the download url to the url file in the aforementioned folder
7. make sure the fstab file is correct for your system
8. run sudo ./install.sh
