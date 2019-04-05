include $(TOPDIR)/rules.mk

PKG_NAME:=nyx
PKG_VERSION:=2.1.0
PKG_RELEASE:=1
PKG_SOURCE:=nyx-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://files.pythonhosted.org/packages/source/n/nyx/
PKG_HASH:=88521488d1c9052e457b9e66498a4acfaaa3adf3adc5a199892632f129a5390b

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DIR:=$(BUILD_DIR)/stem-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

PKG_UNPACK:=$(HOST_TAR) -C $(PKG_BUILD_DIR) --strip-components=1 -xzf $(DL_DIR)/$(PKG_SOURCE)


define Package/python3-nyx
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Nyx
  URL:=https://nyx.torproject.org/
  DEPENDS:=+python3-light +python3-setuptools
  VARIANT:=python3
endef

define Package/python3-nyx/description
  Nyx is a command-line monitor for Tor.
endef

$(eval $(call Py3Package,python3-nyx))
$(eval $(call BuildPackage,python3-nyx))
$(eval $(call BuildPackage,python3-nyx-src))
