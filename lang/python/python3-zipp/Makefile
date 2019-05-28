include $(TOPDIR)/rules.mk

PKG_NAME:=zipp
PKG_VERSION:=0.5.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/source/z/zipp/
PKG_HASH:=ca943a7e809cc12257001ccfb99e3563da9af99d52f261725e96dfe0f9275bc3

PKG_MAINTAINER:=Paul Spooren <mail@aparcar.org>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-zipp
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Zipfile object wrapper
  URL:=https://github.com/jaraco/zipp
  DEPENDS:=+python3-light
  VARIANT:=python3
endef

PYTHON3_PKG_SETUP_VARS:= \
	PKG_VERSION="$(PKG_VERSION)"

define Package/python3-zipp/description
  Backport of pathlib-compatible object wrapper for zip files
endef

$(eval $(call Py3Package,python3-zipp))
$(eval $(call BuildPackage,python3-zipp))
$(eval $(call BuildPackage,python3-zipp-src))
