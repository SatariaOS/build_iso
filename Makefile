LIVE_IMAGE="Satis-Live-`date +%Y%m%d`"
CHROOT_DIR="config/includes.chroot_after_packages"
ROOTFS_RESOURCES="resources/rootfs"
PACKAGE_LISTS="config/package-lists"
PACKAGE_LISTS_RESOURCES="resources/package-lists"

buildconfig:
	echo "create live config files."
	lb config \
	--apt apt \
	--architecture amd64 \
	--distribution bookworm  \
	--parent-distribution bookworm \
	--parent-debian-installer-distribution bookworm \
	--archive-areas "main contrib non-free non-free-firmware" \
	--mirror-bootstrap "http://ftp.riken.go.jp/Linux/debian/debian" \
	--mirror-chroot "http://ftp.riken.go.jp/Linux/debian/debian" \
	--mirror-binary "http://ftp.riken.go.jp/Linux/debian/debian" \
	--bootappend-live "boot=live components debug=1" \
	--image-name "${LIVE_IMAGE}"

	echo "copy resource files."
	cp -pr ${ROOTFS_RESOURCES}/* ${CHROOT_DIR}
	cp -pr ${PACKAGE_LISTS_RESOURCES}/* ${PACKAGE_LISTS}
	
bootstrap: buildconfig
	sudo lb bootstrap

chroot: bootstrap
	sudo lb chroot

binary: chroot
	sudo lb binary

build: buildconfig
	sudo lb build

clean:
	sudo lb clean
	rm -rf config local auto 
