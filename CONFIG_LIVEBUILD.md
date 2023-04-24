# LiveBuild Config
## ディレクトリ構造
LiveBuild環境は以下のようになっています．
このディレクトリ構造は，`prep.sh`内に記載の`lb config`コマンドを実行することで作成されます．

`lb config` に指定するオプションによって，`config/{binary,bootstrap,chroot,common,source}`の内容を指定できます．
詳細については．`prep.sh`を参照してください．
```
Linux-Satis/
├── CONFIG_LIVEBUILD.md
├── LICENSE
├── README.md
├── auto
├── config
│   ├── apt
│   ├── archives
│   ├── binary
│   ├── bootloaders
│   ├── bootstrap
│   ├── chroot
│   ├── common
│   ├── debian-installer
│   ├── hooks
│   │   ├── live
│   │   └── normal
│   ├── includes
│   ├── includes.binary
│   ├── includes.bootstrap
│   ├── includes.chroot_after_packages
│   ├── includes.chroot_before_packages
│   ├── includes.installer
│   ├── includes.source
│   ├── package-lists
│   │   ├── calamares.list.chroot
│   │   ├── desktop.list.chroot
│   │   ├── develop.list.chroot
│   │   ├── live.list.chroot
│   │   └── standard.list.chroot
│   ├── packages
│   ├── packages.binary
│   ├── packages.chroot
│   ├── preseed
│   ├── rootfs
│   └── source
├── local
│   └── bin
└── prep.sh
```

## LiveImageにインストールするパッケージ
LiveImageにインストールするパッケージは`config/package-list`以下のファイルで指定します．
上の例では，以下の5つのリストを用意しています．
- **live.list.chroot** ライブ環境構築に必要なパッケージが指定されています．編集不要です．
- **standard.list.chroot** Package Priorityがstandardのパッケージがインストールされるように特殊な記述をしています．編集不要です．
- **desktop.list.chroot** デスクトップ環境に関するパッケージが指定してあります．XfceやCinammonなお別のデスクトップ環境を利用する場合は，このファイルを編集し関連するメタパッケージを指定してください．
- **develop.list.chroot** LiveImageをビルドする際に必要なツールや`vim`などのテキストエディタが指定されています．
- **calamares.list.chroot** Calamaressインストーラに関するパッケージが指定されています．編集不要です．

