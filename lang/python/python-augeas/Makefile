#
# Copyright (C) 2020 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-augeas
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PYPI_NAME:=python-augeas
PKG_HASH:=5194a49e86b40ffc57055f73d833f87e39dce6fce934683e7d0d5bbb8eff3b8c

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=COPYING

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-augeas
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=python3-augeas
  URL:=http://augeas.net
  DEPENDS:=+python3 +python3-cffi +augeas
endef

define Package/python3-augeas/description
  Python binding to Augeas library
endef

$(eval $(call Py3Package,python3-augeas))
$(eval $(call BuildPackage,python3-augeas))
$(eval $(call BuildPackage,python3-augeas-src))
