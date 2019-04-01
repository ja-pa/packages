#
# Copyright (C) 2019 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=more-itertools
PKG_VERSION:=7.0.0
PKG_RELEASE:=1

PKG_SOURCE:=more-itertools-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/source/m/more-itertools
PKG_HASH:=c3e4748ba1aad8dba30a4886b0b1a2004f9a863837b8654e7059eebf727afa5a

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-more-itertools
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=more-itertools
  URL:=https://github.com/erikrose/more-itertools
  DEPENDS:=+python3-light
  VARIANT:=python3
endef

define Package/python3-more-itertools/description
  more-itertools library collects additional building blocks,
  recipes, and routines for working with Python iterables.
endef


$(eval $(call Py3Package,python3-more-itertools))
$(eval $(call BuildPackage,python3-more-itertools))
$(eval $(call BuildPackage,python3-more-itertools-src))
