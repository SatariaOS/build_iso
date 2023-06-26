LIVE_IMAGE="SatisOS-`date +%Y%m%d`"

RESOURCES="resources"

CONFIG_CHROOT_DIR="config/includes.chroot_after_packages"
CONFIG_PACKAGE_LISTS="config/package-lists"
CONFIG_BOOTLOADERS="config/bootloaders"
CONFIG_PACKAGES="config/packages"

buildconfig:
	git clone https://github.com/SatisOS/i3wm-resources.git ${RESOURCES}

	lb config \
		--apt apt \
		--architecture amd64 \
		--distribution bookworm  \
		--firmware-chroot false \
		--archive-areas "main contrib non-free non-free-firmware" \
		--mirror-bootstrap "http://deb.debian.org/debian" \
		--mirror-chroot "http://deb.debian.org/debian" \
		--bootappend-live "boot=live components locales=ja_JP.UTF-8 timezone=Asia/Tokyo debug=1" \
		--binary-image iso \
		--image-name "${LIVE_IMAGE}"

	cp -pr ${RESOURCES}/rootfs/* ${CONFIG_CHROOT_DIR}
	cp -pr ${RESOURCES}/package-lists/* ${CONFIG_PACKAGE_LISTS}
	cp -pr ${RESOURCES}/bootloaders/* ${CONFIG_BOOTLOADERS}
	
	cp -pr dpkg/* ${CONFIG_PACKAGES}

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
	rm -rf config local auto ${RESOURCES}
	
