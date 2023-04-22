# LiveBuild Config
## tree
```
livebuild/
├── auto/
├── config/
│   ├── apt/
│   ├── archives/
│   ├── bootloaders/
│   ├── debian-installer/
│   ├── hooks/
│   │   ├── live/                       # ディレクトリ内にはSymbolic Linkファイルがある
│   │   └── normal/                     # ディレクトリ内にはSymbolic Linkファイルがある
│   ├── includes/
│   ├── includes.binary/
│   ├── includes.bootstrap/
│   ├── includes.chroot_after_packages/  # パッケージインストール後に，上書きするファイルの置き場
│   ├── includes.chroot_before_packages/
│   ├── includes.installer/
│   ├── includes.source/
│   ├── package-lists/                   # Live Imageにインストールするパッケージ一覧置き場
│   │   ├── desktop.list.chroot
│   │   ├── live.list.chroot
│   │   └── standard.list.chroot
│   ├── packages/
│   ├── packages.binary/
│   ├── packages.chroot/
│   ├── preseed/
│   ├── rootfs/
│   ├── binary                           # lb configで生成されるファイル 1
│   ├── bootstrap                        # lb configで生成されるファイル 2
│   ├── chroot                           # lb configで生成されるファイル 3
│   ├── common                           # lb configで生成されるファイル 4
│   └── source                           # lb configで生成されるファイル 5
├── local/
│   └── bin/
└── prep.sh*                              # lb configを実行するスクリプト
```
## calamares config
```
livebuid/config/includes.chroot_after_packages/etc/calamares/
├── branding
│   └── satis
│       ├── branding.desc
│       ├── debian-logo.png
│       ├── show.qml
│       ├── slide1.png
│       └── welcome.png
├── modules
│   ├── bootloader.conf
│   ├── displaymanager.conf
│   ├── finished.conf
│   ├── fstab.conf
│   ├── luksopenswaphookcfg.conf
│   ├── machineid.conf
│   ├── mount.conf
│   ├── packages.conf
│   ├── unpackfs.conf
│   ├── users.conf
│   └── welcome.conf
└── settings.conf

```



## Dash-to-dock
```
gnome-extensions enable dash-to-dock@micxgx.gmail.com
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position RIGHT
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top true
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.4
```
```
gsettings set org.gnome.shell favorite-apps \
    "[ \
        'install-debian.desktop', \
        'firefox-esr.desktop', \
        'org.gnome.Nautilus.desktop', \
        'org.gnome.Terminal.desktop', \
        'org.gnome.TextEditor.desktop', \
        'gvim.desktop', \
        'emacs.desktop', \
        'org.gnome.Software.desktop', \
        'yelp.desktop', \
        'org.gnome.Settings.desktop
    ]"

```

```
gnome-extensions enable Hide-Activities@shay.shayel.org
gnome-extensions enable apps-menu@gnome-shell-extensions.gcampax.github.com
```
