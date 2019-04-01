#
# Copyright (C) 2019 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=pytest
PKG_VERSION:=4.6.2
PKG_RELEASE:=1

PKG_SOURCE:=pytest-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/source/p/pytest/
PKG_HASH:=bea27a646a3d74cbbcf8d3d4a06b2dfc336baf3dc2cc85cf70ad0157e73e8322

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

PYTHON3_PKG_SETUP_VARS:= \
        PKG_VERSION="$(PKG_VERSION)"

define Package/python3-pytest
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=pytest
  URL:=https://docs.pytest.org/en/latest/
  DEPENDS:= \
	+python3-light \
	+python3-setuptools \
	+python3-atomicwrites \
	+python3-more-itertools \
	+python3-py \
	+python3-six \
	+python3-attrs \
	+python3-pluggy
  VARIANT:=python3
endef

define Py3Build/Compile
	echo "version = \"$(PKG_VERSION)\"" > $(PKG_BUILD_DIR)/src/_pytest/_version.py
	$(call Py3Build/Compile/Default)
endef

define Package/python3-pytest/description
  The pytest framework makes it easy to write small tests, yet scales to support
  complex functional testing for applications and libraries.
endef

$(eval $(call Py3Package,python3-pytest))
$(eval $(call BuildPackage,python3-pytest))
$(eval $(call BuildPackage,python3-pytest-src))
