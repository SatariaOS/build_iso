# LiveBuild Config
## ディレクトリ構造
LiveBuild環境は以下のようになっています．
このディレクトリ構造は，`prep.sh`内に記載の`lb config`コマンドを実行することで作成されます．

`lb config` に指定するオプションによって，`config/{binary,bootstrap,chroot,common,source}`の内容を指定できます．
詳細については．`prep.sh`を参照してください．
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
│   │   ├── calamares.list.chroot
│   │   ├── develop.list.chroot
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

## LiveImageにインストールするパッケージ
LiveImageにインストールするパッケージは`livebuild/config/package-list`以下のファイルで指定します．
上の例では，以下の5つのリストを用意しています．
- **live.list.chroot** ライブ環境構築に必要なパッケージが指定されています．編集不要です．
- **standard.list.chroot** Package Priorityがstandardのパッケージがインストールされるように特殊な記述をしています．編集不要です．
- **desktop.list.chroot** デスクトップ環境に関するパッケージが指定してあります．XfceやCinammonなお別のデスクトップ環境を利用する場合は，このファイルを編集し関連するメタパッケージを指定してください．
- **develop.list.chroot** LiveImageをビルドする際に必要なツールや`vim`などのテキストエディタが指定されています．
- **calamares.list.chroot** Calamaressインストーラに関するパッケージが指定されています．編集不要です．


## Calamares インストーラの設定 (未整理)
```
livebuid/config/includes.chroot_after_packages/etc/calamares/
├── branding
│   └── satis
│       ├── branding.desc           # インストールするディストリ名を記載する
│       ├── debian-logo.png         # 独自のロゴに変更する
│       ├── show.qml                # インストール中に表示するメッセージを変更する
│       ├── slide1.png              # インストール中の画面で表示するスライドを変更する
│       └── welcome.png             # インストーラトップ画面で表示する画像を変更する
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
└── settings.conf                   # brandingを自身のものに変更する( Default は debian )
```
