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
layman=~/chimos-install/bin/layman/usr/
#layman libraries
sudo ln -sf ${layman}lib/python3.7/site-packages/layman ${root}/usr/lib/python3.7/site-packages/layman
#layman portage plug in
sudo ln -sf ${layman}lib/python3.7/site-packages/portage/sync/modules/laymansync ${root}/usr/lib/python3.7/site-packages/portage/sync/modules/laymansync
#layman executable
sudo ln -sf ${layman}lib/python-exec/python3.7/layman ${root}/usr/lib/python-exec/python3.7/layman
#layman man pages
sudo ln -sf ${layman}share/man/man8/layman.8.bz2 ${root}/usr/share/man/man8/layman.8.bz2
#install paludis
paludis=~/chimos-install/bin/paludis/usr/
sudo ln -sf ${paludis}bin/cave ${root}/usr/bin/cave
sudo ln -sf ${paludis}include/paludis-3.0 ${root}/usr/include/paludis-3.0
sudo ln -sf ${paludis}lib64/libcavematchextras_3.0.so ${root}/usr/lib64/libcavematchextras_3.0.so
sudo ln -sf ${paludis}lib64/libcavematchextras_3.0.so.300 ${root}/usr/lib64/libcavematchextras_3.0.so.300
sudo ln -sf ${paludis}lib64/libcavematchextras_3.0.so.300.0.0 ${root}/usr/lib64/libcavematchextras_3.0.so.300.0.0
sudo ln -sf ${paludis}lib64/libpaludis_3.0.so ${root}/usr/lib64/libpaludis_3.0.so
sudo ln -sf ${paludis}lib64/libpaludis_3.0.so.300 ${root}/usr/lib64/libpaludis_3.0.so.300
sudo ln -sf ${paludis}lib64/libpaludis_3.0.so.300.0.0 ${root}/usr/lib64/libpaludis_3.0.so.300.0.0
sudo ln -sf ${paludis}lib64/libpaludisargs_3.0.so ${root}/usr/lib64/libpaludisargs_3.0.so
sudo ln -sf ${paludis}lib64/libpaludisargs_3.0.so.300 ${root}/usr/lib64/libpaludisargs_3.0.so.300
sudo ln -sf ${paludis}lib64/libpaludisargs_3.0.so.300.0.0 ${root}/usr/lib64/libpaludisargs_3.0.so.300.0.0
sudo ln -sf ${paludis}lib64/libpaludiserepositoryxmlthings_3.0.so ${root}/usr/lib64/libpaludiserepositoryxmlthings_3.0.so
sudo ln -sf ${paludis}lib64/libpaludiserepositoryxmlthings_3.0.so.300 ${root}/usr/lib64/libpaludiserepositoryxmlthings_3.0.so.300
sudo ln -sf ${paludis}lib64/libpaludiserepositoryxmlthings_3.0.so.300.0.0 ${root}/usr/lib64/libpaludiserepositoryxmlthings_3.0.so.300.0.0
sudo ln -sf ${paludis}lib64/libpaludisselinux_3.0.so ${root}/usr/lib64/libpaludisselinux_3.0.so
sudo ln -sf ${paludis}lib64/libpaludisselinux_3.0.so.300 ${root}/usr/lib64/libpaludisselinux_3.0.so.300
sudo ln -sf ${paludis}lib64/libpaludisselinux_3.0.so.300.0.0 ${root}/usr/lib64/libpaludisselinux_3.0.so.300.0.0
sudo ln -sf ${paludis}lib64/libpaludisstripperextras_3.0.so ${root}/usr/lib64/libpaludisstripperextras_3.0.so
sudo ln -sf ${paludis}lib64/libpaludisstripperextras_3.0.so.300 ${root}/usr/lib64/libpaludisstripperextras_3.0.so.300
sudo ln -sf ${paludis}lib64/libpaludisstripperextras_3.0.so.300.0.0 ${root}/usr/lib64/libpaludisstripperextras_3.0.so.300.0.0
sudo ln -sf ${paludis}lib64/libpaludisutil_3.0.so ${root}/usr/lib64/libpaludisutil_3.0.so
sudo ln -sf ${paludis}lib64/libpaludisutil_3.0.so.300 ${root}/usr/lib64/libpaludisutil_3.0.so.300
sudo ln -sf ${paludis}lib64/libpaludisutil_3.0.so.300.0.0 ${root}/usr/lib64/libpaludisutil_3.0.so.300.0.0
sudo ln -sf ${paludis}libexec/cave ${root}/usr/libexec/cave
sudo ln -sf ${paludis}libexec/paludis ${root}/usr/libexec/paludis
sudo ln -sf ${paludis}share/man/man1/cave-config.1.bz2 ${root}/usr/share/man/man1/cave-config.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-contents.1.bz2 ${root}/usr/share/man/man1/cave-contents.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-digest.1.bz2 ${root}/usr/share/man/man1/cave-digest.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-display-resolution.1.bz2 ${root}/usr/share/man/man1/cave-display-resolution.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-dump-cave-formats-conf.1.bz2 ${root}/usr/share/man/man1/cave-dump-cave-formats-conf.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-executables.1.bz2 ${root}/usr/share/man/man1/cave-executables.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-execute-resolution.1.bz2 ${root}/usr/share/man/man1/cave-execute-resolution.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-find-candidates.1.bz2 ${root}/usr/share/man/man1/cave-find-candidates.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-fix-cache.1.bz2 ${root}/usr/share/man/man1/cave-fix-cache.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-fix-linkage.1.bz2 ${root}/usr/share/man/man1/cave-fix-linkage.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-generate-metadata.1.bz2 ${root}/usr/share/man/man1/cave-generate-metadata.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-graph-jobs.1.bz2 ${root}/usr/share/man/man1/cave-graph-jobs.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-has-version.1.bz2 ${root}/usr/share/man/man1/cave-has-version.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-help.1.bz2 ${root}/usr/share/man/man1/cave-help.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-import.1.bz2 ${root}/usr/share/man/man1/cave-import.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-info.1.bz2 ${root}/usr/share/man/man1/cave-info.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-manage-search-index.1.bz2 ${root}/usr/share/man/man1/cave-manage-search-index.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-match.1.bz2 ${root}/usr/share/man/man1/cave-match.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-mirror.1.bz2 ${root}/usr/share/man/man1/cave-mirror.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-owner.1.bz2 ${root}/usr/share/man/man1/cave-owner.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-perform.1.bz2 ${root}/usr/share/man/man1/cave-perform.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-best-version.1.bz2 ${root}/usr/share/man/man1/cave-print-best-version.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-categories.1.bz2 ${root}/usr/share/man/man1/cave-print-categories.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-checksum-algorithms.1.bz2 ${root}/usr/share/man/man1/cave-print-checksum-algorithms.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-checksum.1.bz2 ${root}/usr/share/man/man1/cave-print-checksum.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-commands.1.bz2 ${root}/usr/share/man/man1/cave-print-commands.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-dependent-ids.1.bz2 ${root}/usr/share/man/man1/cave-print-dependent-ids.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-environment-metadata.1.bz2 ${root}/usr/share/man/man1/cave-print-environment-metadata.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-id-actions.1.bz2 ${root}/usr/share/man/man1/cave-print-id-actions.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-id-contents.1.bz2 ${root}/usr/share/man/man1/cave-print-id-contents.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-id-environment-variable.1.bz2 ${root}/usr/share/man/man1/cave-print-id-environment-variable.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-id-executables.1.bz2 ${root}/usr/share/man/man1/cave-print-id-executables.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-id-masks.1.bz2 ${root}/usr/share/man/man1/cave-print-id-masks.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-id-metadata.1.bz2 ${root}/usr/share/man/man1/cave-print-id-metadata.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-id-size.1.bz2 ${root}/usr/share/man/man1/cave-print-id-size.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-ids.1.bz2 ${root}/usr/share/man/man1/cave-print-ids.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-owners.1.bz2 ${root}/usr/share/man/man1/cave-print-owners.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-packages.1.bz2 ${root}/usr/share/man/man1/cave-print-packages.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-repositories.1.bz2 ${root}/usr/share/man/man1/cave-print-repositories.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-repository-formats.1.bz2 ${root}/usr/share/man/man1/cave-print-repository-formats.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-repository-metadata.1.bz2 ${root}/usr/share/man/man1/cave-print-repository-metadata.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-resolution-required-confirmations.1.bz2 ${root}/usr/share/man/man1/cave-print-resolution-required-confirmations.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-set.1.bz2 ${root}/usr/share/man/man1/cave-print-set.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-sets.1.bz2 ${root}/usr/share/man/man1/cave-print-sets.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-spec.1.bz2 ${root}/usr/share/man/man1/cave-print-spec.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-sync-protocols.1.bz2 ${root}/usr/share/man/man1/cave-print-sync-protocols.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-unmanaged-files.1.bz2 ${root}/usr/share/man/man1/cave-print-unmanaged-files.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-print-unused-distfiles.1.bz2 ${root}/usr/share/man/man1/cave-print-unused-distfiles.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-purge.1.bz2 ${root}/usr/share/man/man1/cave-purge.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-report.1.bz2 ${root}/usr/share/man/man1/cave-report.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-resolve.1.bz2 ${root}/usr/share/man/man1/cave-resolve.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-resume.1.bz2 ${root}/usr/share/man/man1/cave-resume.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-search.1.bz2 ${root}/usr/share/man/man1/cave-search.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-show.1.bz2 ${root}/usr/share/man/man1/cave-show.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-size.1.bz2 ${root}/usr/share/man/man1/cave-size.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-sync-protocol-options.1.bz2 ${root}/usr/share/man/man1/cave-sync-protocol-options.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-sync.1.bz2 ${root}/usr/share/man/man1/cave-sync.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-uninstall.1.bz2 ${root}/usr/share/man/man1/cave-uninstall.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-update-world.1.bz2 ${root}/usr/share/man/man1/cave-update-world.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave-verify.1.bz2 ${root}/usr/share/man/man1/cave-verify.1.bz2
sudo ln -sf ${paludis}share/man/man1/cave.1.bz2 ${root}/usr/share/man/man1/cave.1.bz2
sudo ln -sf ${paludis}share/paludis ${root}/usr/share/paludis
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