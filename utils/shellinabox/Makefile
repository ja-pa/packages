#
# Copyright (C) 2020 CZ.NIC z.s.p.o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v3.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=shellinabox
PKG_VERSION:=2.21
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/shellinabox/shellinabox
PKG_SOURCE_VERSION:=4f0ecc31ac6f985e0dd3f5a52cbfc0e9251f6361


PKG_MAINTAINER:=CZ.NIC <packaging@turris.cz>
PKG_LICENSE:=GPL-3.0-or-later
PKG_LICENSE_FILES:=LICENSE

PKG_FIXUP:=autoreconf

#PKG_BUILD_DEPENDS:=\
#	reforis-distutils/host

include $(INCLUDE_DIR)/package.mk

define Package/shellinabox
  TITLE:=Web terminal
  URL:=https://gitlab.nic.cz/turris/reforis
  DEPENDS:=+zlib
endef

define Package/shellinabox/description
  shellinabox
endef
CONFIGURE_ARGS += --disable-utmp

define Package/shellinabox/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/shellinaboxd $(1)/usr/bin/
endef

$(eval $(call BuildPackage,shellinabox))
