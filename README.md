# Linux Satis
## 概要
Linux Satis は，いわゆるディストリビューションではありません．
私が自分の自己満足で開発しているDebian Testing (bookworm) のリマスタ版です．

現状，独自のパッケージレポジトリを持っていないので，ディストリビューションだと主張はできません．

---
## 特徴
- インストーラに[Calamares](https://calamares.io)を採用しています．
- インストール後の環境は，Live Imageをビルド環境として利用できます．

---
## 注意
なお，このリポジトリでビルドしたISOは，仮想マシン(UEFI,64bit，SecureBoot無効)の環境でのみでしか動作確認できておりません．

実機や本番環境で利用する場合は，事前に大事なデータのバックアップを取るなどの対策をとってください．

---
## ISOのビルド方法
### 必要な環境
Debian 11以上がインストールされたamd64(x86_64)PC．Debian testing (bookworm) を推奨

### 事前に必要なソフトウェア
以下のパッケージを事前にインストール
- git
- make
- live-build

### ビルド方法
ビルド手順は以下のとおり．
```
git clone https://github.com/rkarsnk/Linux-Satis.git workdir
cd workdir
make build
```
`Satis-live-YYYYMMDD-amd64.hybrid.iso`というファイルが生成されます．
LiveImageのユーザ名は`user`，パスワードは`live`です．

---
## Live Image のデスクトップ環境を変更する方法
現在はGNOME環境を前提に開発しています．
`config/package-list/` 以下にある `desktop.list.chroot`にてインストールするデスクトップ環境を選択しています．
``` 
task-japanese

gnome-core
gnome-tweaks
gnome-shell-extensions
gnome-shell-extension-manager
gnome-shell-extension-kimpanel
gnome-shell-extension-dashtodock
gnome-shell-extension-hide-activities

gdm3

fonts-noto
fonts-vlgothic

fcitx5
fcitx5-mozc
fcitx5-skk
```

Xfce4環境に変える場合は，`desktop.list.chroot`を以下のように変更します(未検証)．
```
task-japanese

xorg
xfce4
lightdm

fonts-noto
fonts-vlgothic

fcitx5
fcitx5-mozc
fcitx5-skk
```

LiveBuild環境の詳細については以下のドキュメントを参照してください．
- [CONFIG_LIVEBUILD.md](CONFIG_LIVEBUILD.md)

---
## TODO
- [x] Calamares インストーラの導入
- [x] Makefileを使ったビルドシステム
- [ ] livebuildディレクトリの説明追加
- [ ] インストール後のGNOMEの設定を自動化

