# SataliaOS build_iso
## 概要
このレポジトリはSatis OSのインストールLiveISOを作成するために必要なファイルを管理するレポジトリです．

## 特徴
SataliaOSは以下の特徴を有しています．
- Debian 12 (bookworm) ベース
- インストーラに[Calamares](https://calamares.io)を採用しています．
- 以下のGUI環境を採用しています．
  - ログインマネージャはLightDM
  - ウィンドウマネージャはi3wm
  - ランチャはrofi
  - ターミナルアプリはAlacritty


実機や本番環境で利用する場合は，事前に大事なデータのバックアップを取るなどの対策をとってください．

## ISOのビルド方法
### 必要な環境
Debian 12がインストールされたamd64(x86_64)PCを推奨

### 事前に必要なソフトウェア
以下のパッケージを事前にインストール
- git
- make
- live-build

### ビルド方法
ビルド手順は以下のとおり．
```
$ git clone https://github.com/rkarsnk/build_iso.git build-iso
$ cd build-iso
$ ./init.sh
$ make build
```

ビルドが成功すると，`SataliaOS-YYYYMMDD-amd64.hybrid.iso`というファイルが生成されます．
ライブイメージのデフォルトユーザ名は`user`，パスワードは`live`です．

## TODO
- [x] Calamares インストーラの導入
- [x] Makefileを使ったビルドシステム
- [ ] インストール後のi3環境の設定自動化

