LIVE_IMAGE="SatisOS-`date +%Y%m%d`"

RESOURCES="resources"

CHROOT_DIR="config/includes.chroot_after_packages"
PACKAGE_LISTS="config/package-lists"

buildconfig:
# create live config files.
	lb config \
	--apt apt \
	--architecture amd64 \
	--distribution bookworm  \
	--firmware-chroot false \
	--archive-areas "main contrib non-free non-free-firmware" \
	--mirror-bootstrap "http://deb.debian.org/debian" \
	--mirror-chroot "http://deb.debian.org/debian" \
	--mirror-binary "http://deb.debian.org/debian" \
	--bootappend-live "boot=live components debug=1" \
	--image-name "${LIVE_IMAGE}"

#copy resource files.
	cp -pr ${RESOURCES}/rootfs/* ${CHROOT_DIR}
	cp -pr ${RESOURCES}/package-lists/* ${PACKAGE_LISTS}
	
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
