#!/bin/bash

lb config \
	--apt apt \
	--apt-recommends false \
	--architecture amd64 \
	--distribution bookworm  \
	--parent-distribution bookworm \
	--parent-debian-installer-distribution bookworm \
	--archive-areas "main contrib non-free non-free-firmware" \
	--mirror-bootstrap "http://ftp.riken.go.jp/Linux/debian/debian" \
	--mirror-chroot "http://ftp.riken.go.jp/Linux/debian/debian" \
	--mirror-binary "http://ftp.riken.go.jp/Linux/debian/debian" \
	--bootappend-live "boot=live components debug=1" \
	--image-name "bookworm-live-image"

