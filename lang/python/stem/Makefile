include $(TOPDIR)/rules.mk

PKG_NAME:=stem
PKG_VERSION:=1.7.1
PKG_RELEASE:=1

PKG_SOURCE:=stem-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/source/s/stem/
PKG_HASH:=c9eaf3116cb60c15995cbd3dec3a5cbc50e9bb6e062c4d6d42201e566f498ca2

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/stem-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

PKG_UNPACK:=$(HOST_TAR) -C $(PKG_BUILD_DIR) --strip-components=1 -xzf $(DL_DIR)/$(PKG_SOURCE)


define Package/python3-stem
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Stem
  URL:=https://stem.torproject.org/
  DEPENDS:=+python3-light +python3-setuptools
  VARIANT:=python3
endef

define Package/python3-stem/description
  Stem is a Python controller library for Tor.
endef

$(eval $(call Py3Package,python3-stem))
$(eval $(call BuildPackage,python3-stem))
$(eval $(call BuildPackage,python3-stem-src))
