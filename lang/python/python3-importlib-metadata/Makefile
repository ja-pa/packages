include $(TOPDIR)/rules.mk

PKG_NAME:=importlib_metadata
PKG_VERSION:=0.17
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/source/i/importlib_metadata
PKG_HASH:=a9f185022cfa69e9ca5f7eabfd5a58b689894cb78a11e3c8c89398a8ccbb8e7f

PKG_MAINTAINER:=Paul Spooren <mail@aparcar.org>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-importlib-metadata
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Like importlib_resources only for metadata.
  URL:=https://gitlab.com/python-devs/importlib_metadata
  DEPENDS=+python3-light
  VARIANT:=python3
endef

PYTHON3_PKG_SETUP_VARS:= \
        PKG_VERSION="$(PKG_VERSION)"

define Package/python3-importlib-metadata/description
  importlib_metadata is a library to access the metadata for a Python package.
  It is intended to be ported to Python 3.8.
endef

$(eval $(call Py3Package,python3-importlib-metadata))
$(eval $(call BuildPackage,python3-importlib-metadata))
$(eval $(call BuildPackage,python3-importlib-metadata-src))
