#
# Copyright (C) 2020 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=sexpect
PKG_VERSION:=2.3.3
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/clarkwang/sexpect/tar.gz/v2.3.3?
PKG_HASH:=3c381a0548eb9d577e1e7db01ebe942ac26a72c90bb2ca3295b6fbc70d6c0995

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=GPL-3.0-only
PKG_LICENSE_FILES:=LICENCE

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk

define Package/sexpect
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=Expect for Shells
  URL:=https://github.com/clarkwang/sexpect
  DEPENDS:=+librt
endef

define Package/sexpect/description
  sexpect is another implementation of Expect which is specifically
  designed for Shell scripts (sh, bash, ksh, zsh, ...).
endef

define Package/sexpect/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/sexpect $(1)/usr/bin/
endef

$(eval $(call BuildPackage,sexpect))
