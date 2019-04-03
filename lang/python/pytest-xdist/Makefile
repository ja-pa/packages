#
# Copyright (C) 2019 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=pytest-xdist
PKG_VERSION:=1.27.0
PKG_RELEASE:=1

PKG_SOURCE:=pytest-xdist-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/source/p/pytest-xdist/
PKG_HASH:=a96ed691705882560fa3fc95531fbd4c224896c827f4004817eb2dcac4ba41a2

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

PYTHON3_PKG_SETUP_VARS:= \
        PKG_VERSION="$(PKG_VERSION)"

define Package/python3-pytest-xdist
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=pytest-xdist
  URL:=https://github.com/pytest-dev/pytest-xdist
  DEPENDS:=+python3-pytest
  VARIANT:=python3
endef

define Py3Build/Compile
	echo "version = \"$(PKG_VERSION)\"" > $(PKG_BUILD_DIR)/xdist/_version.py
	$(call Py3Build/Compile/Default)
endef

define Package/python3-pytest-xdist/description
  Pytest-xdist is pytest plugin which enables run tests in parallel.
endef

$(eval $(call Py3Package,python3-pytest-xdist))
$(eval $(call BuildPackage,python3-pytest-xdist))
$(eval $(call BuildPackage,python3-pytest-xdist-src))
