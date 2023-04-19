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
- [] Makefileを使ったビルドシステム
- [] livebuildディレクトリの説明追加
- [] Calamares インストーラの導入
- etc...