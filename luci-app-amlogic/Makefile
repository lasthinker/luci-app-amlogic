#===================================================================================================
# This file is licensed under the terms of the GNU General Public
# License version 2. This program is licensed "as is" without any
# warranty of any kind, whether express or implied.
#
# This file is a part of the luci-app-amlogic plugin
#
# Description: Support install/update/backup/restore/snapshot etc for OpenWrt on Amlogic S905X
#
# Copyright (C) 2021- https://github.com/lasthinker/luci-app-amlogic
#
#===================================================================================================

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-amlogic
PKG_VERSION:=3.1.80
PKG_RELEASE:=1

PKG_LICENSE:=GPL-2.0 License
PKG_MAINTAINER:=lasthinker <https://github.com/lasthinker/luci-app-amlogic>

LUCI_TITLE:=LuCI support for Amlogic
LUCI_PKGARCH:=all
LUCI_DEPENDS:= \
	@(aarch64||arm) +luci-lib-fs +block-mount +blkid +parted \
	+dosfstools +e2fsprogs +lsblk +pv +resize2fs +losetup +uuidgen

define Package/$(PKG_NAME)/conffiles
/etc/config/amlogic
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
