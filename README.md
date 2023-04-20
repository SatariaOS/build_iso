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

### re-build
```
cd livebuild
sudo lb clean
./prep.sh
sudo lb build
```

## TODO
- [ ] Makefileを使ったビルドシステム
- [ ] livebuildディレクトリの説明追加
- [x] Calamares インストーラの導入

etc...

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