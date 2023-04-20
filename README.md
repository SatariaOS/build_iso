# Linux Satis
## Summary
Linux Satis is not Linux Distribution, it is remaster of Linux Distribution for my own satisfaction. 

## How to build iso
### prereq env
- Debian Bookworm(testing)
- amd64

### prereq software
```
apt install live-build
```

### build
```
cd livebuild
./prep.sh
sudo lb build
```

## TODO
- [ ] Makefileを使ったビルドシステム
- [ ] livebuildディレクトリの説明追加
- [*] Calamares インストーラの導入
- etc...

## tree
```
livebuild/
├── auto
├── config
│   ├── apt
│   ├── archives
│   ├── binary
│   ├── bootloaders
│   ├── bootstrap
│   ├── chroot
│   ├── common
│   ├── debian-installer
│   ├── hooks
│   │   ├── live
│   │   │   ├── 0010-disable-kexec-tools.hook.chroot -> /usr/share/live/build/hooks/live/0010-disable-kexec-tools.hook.chroot
│   │   │   └── 0050-disable-sysvinit-tmpfs.hook.chroot -> /usr/share/live/build/hooks/live/0050-disable-sysvinit-tmpfs.hook.chroot
│   │   └── normal
│   │       ├── 0020-create-mtab-symlink.hook.chroot -> /usr/share/live/build/hooks/normal/0020-create-mtab-symlink.hook.chroot
│   │       ├── 0030-enable-cryptsetup.hook.chroot -> /usr/share/live/build/hooks/normal/0030-enable-cryptsetup.hook.chroot
│   │       ├── 0040-create-locales-files.hook.chroot -> /usr/share/live/build/hooks/normal/0040-create-locales-files.hook.chroot
│   │       ├── 0100-remove-adjtime-configuration.hook.chroot -> /usr/share/live/build/hooks/normal/0100-remove-adjtime-configuration.hook.chroot
│   │       ├── 0110-remove-backup-files.hook.chroot -> /usr/share/live/build/hooks/normal/0110-remove-backup-files.hook.chroot
│   │       ├── 0120-remove-dbus-machine-id.hook.chroot -> /usr/share/live/build/hooks/normal/0120-remove-dbus-machine-id.hook.chroot
│   │       ├── 0130-remove-gnome-icon-cache.hook.chroot -> /usr/share/live/build/hooks/normal/0130-remove-gnome-icon-cache.hook.chroot
│   │       ├── 0140-remove-log-files.hook.chroot -> /usr/share/live/build/hooks/normal/0140-remove-log-files.hook.chroot
│   │       ├── 0150-remove-mdadm-configuration.hook.chroot -> /usr/share/live/build/hooks/normal/0150-remove-mdadm-configuration.hook.chroot
│   │       ├── 0160-remove-openssh-server-host-keys.hook.chroot -> /usr/share/live/build/hooks/normal/0160-remove-openssh-server-host-keys.hook.chroot
│   │       ├── 0170-remove-python-py.hook.chroot -> /usr/share/live/build/hooks/normal/0170-remove-python-py.hook.chroot
│   │       ├── 0180-remove-systemd-machine-id.hook.chroot -> /usr/share/live/build/hooks/normal/0180-remove-systemd-machine-id.hook.chroot
│   │       ├── 0190-remove-temporary-files.hook.chroot -> /usr/share/live/build/hooks/normal/0190-remove-temporary-files.hook.chroot
│   │       ├── 0195-remove-ssl-cert-snakeoil.hook.chroot -> /usr/share/live/build/hooks/normal/0195-remove-ssl-cert-snakeoil.hook.chroot
│   │       ├── 0200-remove-udev-persistent-cd-rules.hook.chroot -> /usr/share/live/build/hooks/normal/0200-remove-udev-persistent-cd-rules.hook.chroot
│   │       ├── 0300-remove-udev-persistent-net-rules.hook.chroot -> /usr/share/live/build/hooks/normal/0300-remove-udev-persistent-net-rules.hook.chroot
│   │       ├── 0400-update-apt-file-cache.hook.chroot -> /usr/share/live/build/hooks/normal/0400-update-apt-file-cache.hook.chroot
│   │       ├── 0410-update-apt-xapian-index.hook.chroot -> /usr/share/live/build/hooks/normal/0410-update-apt-xapian-index.hook.chroot
│   │       ├── 0420-update-glx-alternative.hook.chroot -> /usr/share/live/build/hooks/normal/0420-update-glx-alternative.hook.chroot
│   │       ├── 0430-update-mlocate-database.hook.chroot -> /usr/share/live/build/hooks/normal/0430-update-mlocate-database.hook.chroot
│   │       ├── 0440-update-nvidia-alternative.hook.chroot -> /usr/share/live/build/hooks/normal/0440-update-nvidia-alternative.hook.chroot
│   │       └── 0500-reproducible-glibc.hook.chroot -> /usr/share/live/build/hooks/normal/0500-reproducible-glibc.hook.chroot
│   ├── includes
│   ├── includes.binary
│   ├── includes.bootstrap
│   ├── includes.chroot_after_packages
│   │   ├── etc
│   │   └── lib
│   │       └── live
│   │           └── config
│   ├── includes.chroot_before_packages
│   ├── includes.installer
│   ├── includes.source
│   ├── package-lists
│   │   ├── desktop.list.chroot
│   │   ├── live.list.chroot
│   │   └── standard.list.chroot
│   ├── packages
│   ├── packages.binary
│   ├── packages.chroot
│   ├── preseed
│   ├── rootfs
│   └── source
├── local
│   └── bin
└── prep.sh

29 directories, 33 files
```
