#install ssl-fetch
ln -sf /chimos-install/bin/ssl-fetch/usr/lib/python3.7/site-packages/sslfetch /usr/lib/python3.7/site-packages/sslfetch
#install layman
layman=/chimos-install/bin/layman/usr/
#layman config
ln -sf /var/db/repos/prototype99/profiles-local/layman.cfg ${root}/etc/layman/layman.cfg
#layman libraries
ln -sf ${layman}lib/python3.7/site-packages/layman /usr/lib/python3.7/site-packages/layman
#layman portage plug in
ln -sf ${layman}lib/python3.7/site-packages/portage/sync/modules/laymansync /usr/lib/python3.7/site-packages/portage/sync/modules/laymansync
#layman executable
ln -sf ${layman}lib/python-exec/python3.7/layman /usr/lib/python-exec/python3.7/layman
ln -sf /usr/lib/python-exec/python3.7/layman /usr/bin/layman
#layman man pages
ln -sf ${layman}share/man/man8/layman.8.bz2 /usr/share/man/man8/layman.8.bz2
#install paludis
paludis=/chimos-install/bin/paludis/usr/
ln -sf ${paludis}bin/cave /usr/bin/cave
ln -sf ${paludis}include/paludis-3.0 /usr/include/paludis-3.0
ln -sf ${paludis}lib64/libcavematchextras_3.0.so /usr/lib64/libcavematchextras_3.0.so
ln -sf ${paludis}lib64/libcavematchextras_3.0.so.300 /usr/lib64/libcavematchextras_3.0.so.300
ln -sf ${paludis}lib64/libcavematchextras_3.0.so.300.0.0 /usr/lib64/libcavematchextras_3.0.so.300.0.0
ln -sf ${paludis}lib64/libpaludis_3.0.so /usr/lib64/libpaludis_3.0.so
ln -sf ${paludis}lib64/libpaludis_3.0.so.300 /usr/lib64/libpaludis_3.0.so.300
ln -sf ${paludis}lib64/libpaludis_3.0.so.300.0.0 /usr/lib64/libpaludis_3.0.so.300.0.0
ln -sf ${paludis}lib64/libpaludisargs_3.0.so /usr/lib64/libpaludisargs_3.0.so
ln -sf ${paludis}lib64/libpaludisargs_3.0.so.300 /usr/lib64/libpaludisargs_3.0.so.300
ln -sf ${paludis}lib64/libpaludisargs_3.0.so.300.0.0 /usr/lib64/libpaludisargs_3.0.so.300.0.0
ln -sf ${paludis}lib64/libpaludiserepositoryxmlthings_3.0.so /usr/lib64/libpaludiserepositoryxmlthings_3.0.so
ln -sf ${paludis}lib64/libpaludiserepositoryxmlthings_3.0.so.300 /usr/lib64/libpaludiserepositoryxmlthings_3.0.so.300
ln -sf ${paludis}lib64/libpaludiserepositoryxmlthings_3.0.so.300.0.0 /usr/lib64/libpaludiserepositoryxmlthings_3.0.so.300.0.0
ln -sf ${paludis}lib64/libpaludisselinux_3.0.so /usr/lib64/libpaludisselinux_3.0.so
ln -sf ${paludis}lib64/libpaludisselinux_3.0.so.300 /usr/lib64/libpaludisselinux_3.0.so.300
ln -sf ${paludis}lib64/libpaludisselinux_3.0.so.300.0.0 /usr/lib64/libpaludisselinux_3.0.so.300.0.0
ln -sf ${paludis}lib64/libpaludisstripperextras_3.0.so /usr/lib64/libpaludisstripperextras_3.0.so
ln -sf ${paludis}lib64/libpaludisstripperextras_3.0.so.300 /usr/lib64/libpaludisstripperextras_3.0.so.300
ln -sf ${paludis}lib64/libpaludisstripperextras_3.0.so.300.0.0 /usr/lib64/libpaludisstripperextras_3.0.so.300.0.0
ln -sf ${paludis}lib64/libpaludisutil_3.0.so /usr/lib64/libpaludisutil_3.0.so
ln -sf ${paludis}lib64/libpaludisutil_3.0.so.300 /usr/lib64/libpaludisutil_3.0.so.300
ln -sf ${paludis}lib64/libpaludisutil_3.0.so.300.0.0 /usr/lib64/libpaludisutil_3.0.so.300.0.0
ln -sf ${paludis}libexec/cave /usr/libexec/cave
ln -sf ${paludis}libexec/paludis /usr/libexec/paludis
ln -sf ${paludis}share/man/man1/cave-config.1.bz2 /usr/share/man/man1/cave-config.1.bz2
ln -sf ${paludis}share/man/man1/cave-contents.1.bz2 /usr/share/man/man1/cave-contents.1.bz2
ln -sf ${paludis}share/man/man1/cave-digest.1.bz2 /usr/share/man/man1/cave-digest.1.bz2
ln -sf ${paludis}share/man/man1/cave-display-resolution.1.bz2 /usr/share/man/man1/cave-display-resolution.1.bz2
ln -sf ${paludis}share/man/man1/cave-dump-cave-formats-conf.1.bz2 /usr/share/man/man1/cave-dump-cave-formats-conf.1.bz2
ln -sf ${paludis}share/man/man1/cave-executables.1.bz2 /usr/share/man/man1/cave-executables.1.bz2
ln -sf ${paludis}share/man/man1/cave-execute-resolution.1.bz2 /usr/share/man/man1/cave-execute-resolution.1.bz2
ln -sf ${paludis}share/man/man1/cave-find-candidates.1.bz2 /usr/share/man/man1/cave-find-candidates.1.bz2
ln -sf ${paludis}share/man/man1/cave-fix-cache.1.bz2 /usr/share/man/man1/cave-fix-cache.1.bz2
ln -sf ${paludis}share/man/man1/cave-fix-linkage.1.bz2 /usr/share/man/man1/cave-fix-linkage.1.bz2
ln -sf ${paludis}share/man/man1/cave-generate-metadata.1.bz2 /usr/share/man/man1/cave-generate-metadata.1.bz2
ln -sf ${paludis}share/man/man1/cave-graph-jobs.1.bz2 /usr/share/man/man1/cave-graph-jobs.1.bz2
ln -sf ${paludis}share/man/man1/cave-has-version.1.bz2 /usr/share/man/man1/cave-has-version.1.bz2
ln -sf ${paludis}share/man/man1/cave-help.1.bz2 /usr/share/man/man1/cave-help.1.bz2
ln -sf ${paludis}share/man/man1/cave-import.1.bz2 /usr/share/man/man1/cave-import.1.bz2
ln -sf ${paludis}share/man/man1/cave-info.1.bz2 /usr/share/man/man1/cave-info.1.bz2
ln -sf ${paludis}share/man/man1/cave-manage-search-index.1.bz2 /usr/share/man/man1/cave-manage-search-index.1.bz2
ln -sf ${paludis}share/man/man1/cave-match.1.bz2 /usr/share/man/man1/cave-match.1.bz2
ln -sf ${paludis}share/man/man1/cave-mirror.1.bz2 /usr/share/man/man1/cave-mirror.1.bz2
ln -sf ${paludis}share/man/man1/cave-owner.1.bz2 /usr/share/man/man1/cave-owner.1.bz2
ln -sf ${paludis}share/man/man1/cave-perform.1.bz2 /usr/share/man/man1/cave-perform.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-best-version.1.bz2 /usr/share/man/man1/cave-print-best-version.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-categories.1.bz2 /usr/share/man/man1/cave-print-categories.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-checksum-algorithms.1.bz2 /usr/share/man/man1/cave-print-checksum-algorithms.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-checksum.1.bz2 /usr/share/man/man1/cave-print-checksum.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-commands.1.bz2 /usr/share/man/man1/cave-print-commands.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-dependent-ids.1.bz2 /usr/share/man/man1/cave-print-dependent-ids.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-environment-metadata.1.bz2 /usr/share/man/man1/cave-print-environment-metadata.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-id-actions.1.bz2 /usr/share/man/man1/cave-print-id-actions.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-id-contents.1.bz2 /usr/share/man/man1/cave-print-id-contents.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-id-environment-variable.1.bz2 /usr/share/man/man1/cave-print-id-environment-variable.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-id-executables.1.bz2 /usr/share/man/man1/cave-print-id-executables.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-id-masks.1.bz2 /usr/share/man/man1/cave-print-id-masks.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-id-metadata.1.bz2 /usr/share/man/man1/cave-print-id-metadata.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-id-size.1.bz2 /usr/share/man/man1/cave-print-id-size.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-ids.1.bz2 /usr/share/man/man1/cave-print-ids.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-owners.1.bz2 /usr/share/man/man1/cave-print-owners.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-packages.1.bz2 /usr/share/man/man1/cave-print-packages.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-repositories.1.bz2 /usr/share/man/man1/cave-print-repositories.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-repository-formats.1.bz2 /usr/share/man/man1/cave-print-repository-formats.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-repository-metadata.1.bz2 /usr/share/man/man1/cave-print-repository-metadata.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-resolution-required-confirmations.1.bz2 /usr/share/man/man1/cave-print-resolution-required-confirmations.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-set.1.bz2 /usr/share/man/man1/cave-print-set.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-sets.1.bz2 /usr/share/man/man1/cave-print-sets.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-spec.1.bz2 /usr/share/man/man1/cave-print-spec.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-sync-protocols.1.bz2 /usr/share/man/man1/cave-print-sync-protocols.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-unmanaged-files.1.bz2 /usr/share/man/man1/cave-print-unmanaged-files.1.bz2
ln -sf ${paludis}share/man/man1/cave-print-unused-distfiles.1.bz2 /usr/share/man/man1/cave-print-unused-distfiles.1.bz2
ln -sf ${paludis}share/man/man1/cave-purge.1.bz2 /usr/share/man/man1/cave-purge.1.bz2
ln -sf ${paludis}share/man/man1/cave-report.1.bz2 /usr/share/man/man1/cave-report.1.bz2
ln -sf ${paludis}share/man/man1/cave-resolve.1.bz2 /usr/share/man/man1/cave-resolve.1.bz2
ln -sf ${paludis}share/man/man1/cave-resume.1.bz2 /usr/share/man/man1/cave-resume.1.bz2
ln -sf ${paludis}share/man/man1/cave-search.1.bz2 /usr/share/man/man1/cave-search.1.bz2
ln -sf ${paludis}share/man/man1/cave-show.1.bz2 /usr/share/man/man1/cave-show.1.bz2
ln -sf ${paludis}share/man/man1/cave-size.1.bz2 /usr/share/man/man1/cave-size.1.bz2
ln -sf ${paludis}share/man/man1/cave-sync-protocol-options.1.bz2 /usr/share/man/man1/cave-sync-protocol-options.1.bz2
ln -sf ${paludis}share/man/man1/cave-sync.1.bz2 /usr/share/man/man1/cave-sync.1.bz2
ln -sf ${paludis}share/man/man1/cave-uninstall.1.bz2 /usr/share/man/man1/cave-uninstall.1.bz2
ln -sf ${paludis}share/man/man1/cave-update-world.1.bz2 /usr/share/man/man1/cave-update-world.1.bz2
ln -sf ${paludis}share/man/man1/cave-verify.1.bz2 /usr/share/man/man1/cave-verify.1.bz2
ln -sf ${paludis}share/man/man1/cave.1.bz2 /usr/share/man/man1/cave.1.bz2
ln -sf ${paludis}share/paludis /usr/share/paludis
#install sudo
sudo=/chimos-install/bin/sudo/
ln -sf ${sudo}etc/sudoers /etc/sudoers
ln -sf ${sudo}etc/sudoers.dist /etc/sudoers.dist
ln -sf ${sudo}etc/pam.d/sudo /etc/pam.d/sudo
ln -sf ${sudo}usr/bin/sudoedit /usr/bin/sudoedit
ln -sf ${sudo}usr/bin/sudo /usr/bin/sudo
ln -sf ${sudo}usr/bin/cvtsudoers /usr/bin/cvtsudoers
ln -sf ${sudo}usr/include/sudo_plugin.h /usr/include/sudo_plugin.h
ln -sf ${sudo}usr/lib/tmpfiles.d/sudo.conf /usr/lib/tmpfiles.d/sudo.conf
ln -sf ${sudo}usr/lib64/sudo /usr/lib64/sudo
ln -sf ${sudo}usr/libexec/sudo /usr/libexec/sudo