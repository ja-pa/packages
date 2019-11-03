#
# Copyright (C) 2019 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-pytest
PKG_VERSION:=5.2.2
PKG_RELEASE:=1

PYPI_NAME:=pytest
PKG_HASH:=27abc3fef618a01bebb1f0d6d303d2816a99aa87a5968ebc32fe971be91eb1e6

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

PKG_BUILD_DEPENDS:=+python3-setuptools
HOST_PYTHON3_PACKAGE_BUILD_DEPENDS:=setuptools-scm

define Package/python3-pytest
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python testing framework
  URL:=https://docs.pytest.org/en/latest/
  DEPENDS:= \
	+python3-light \
	+python3-atomicwrites \
	+python3-more-itertools \
	+python3-py \
	+python3-attrs \
	+python3-pluggy \
	+python3-importlib-metadata \
	+python3-packaging \
	+python3-wcwidth
  VARIANT:=python3
endef

define Package/python3-pytest/description
  The pytest framework makes it easy to write small tests, yet scales to support
  complex functional testing for applications and libraries.
endef

$(eval $(call Py3Package,python3-pytest))
$(eval $(call BuildPackage,python3-pytest))
$(eval $(call BuildPackage,python3-pytest-src))
