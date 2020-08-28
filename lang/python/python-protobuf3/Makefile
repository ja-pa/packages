include $(TOPDIR)/rules.mk

PKG_NAME:=python-protobuf3
PKG_VERSION:=0.2.1
PKG_RELEASE:=1

PYPI_NAME:=protobuf3
PKG_HASH:=ddd878b3f991beff566ab384d3588cf8e89758e3a16a78f4099dbe70de3c41a2

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-protobuf3
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Protocol buffers library for Python 3
  URL:=https://github.com/Pr0Ger/protobuf3
  DEPENDS:=+python3-light
  VARIANT:=python3
endef

define Package/python3-protobuf3/description
  Protocol buffers library for Python3.
endef

$(eval $(call Py3Package,python3-protobuf3))
$(eval $(call BuildPackage,python3-protobuf3))
$(eval $(call BuildPackage,python3-protobuf3-src))
