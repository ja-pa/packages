#
# Copyright (C) 2020 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=sexpect
PKG_VERSION:=2.2.2
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/clarkwang/sexpect.git
PKG_SOURCE_VERSION:=30142b3bd3251164608e29014cc9b14814e697c3
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.gz

PKG_HASH:=ed33a49c29cf865e753939687f4f37eb89a779defa331d55ccd8ee972aa7eef7

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=GPL-3.0-only
PKG_LICENSE_FILES:=LICENCE

PKG_BUILD_PARALLEL:=1
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)-$(PKG_VERSION)

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
