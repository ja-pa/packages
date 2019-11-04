#
# Copyright (C) 2019 CZ.NIC z.s.p.o. (http://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-packaging
PKG_VERSION:=19.2
PKG_RELEASE:=1

PYPI_NAME:=packaging
PKG_HASH:=28b924174df7a2fa32c1953825ff29c61e2f5e082343165438812f00d3a7fc47

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=BSD-2-Clause Apache-2.0
PKG_LICENSE_FILES:=LICENSE LICENSE.APACHE LICENSE.BSD

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-packaging
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Core utilities for Python packages
  URL:=https://github.com/pypa/packaging
  DEPENDS:=+python3-light +python3-pyparsing +python3-six
  VARIANT:=python3
endef

define Package/python3-packaging/description
  Core utilities for Python packages
endef

$(eval $(call Py3Package,python3-packaging))
$(eval $(call BuildPackage,python3-packaging))
$(eval $(call BuildPackage,python3-packaging-src))
