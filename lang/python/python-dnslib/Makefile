include $(TOPDIR)/rules.mk

PKG_NAME:=python-dnslib
PKG_VERSION:=0.9.14
PKG_RELEASE:=1

PYPI_NAME:=dnslib
PKG_HASH:=fbd20a7cd704836923be8e130f0da6c3d840f14ac04590fae420a41d1f1be6fb

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-dnslib
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=DNS lib
  URL:=https://github.com/paulc/dnslib
  DEPENDS:=+python3-light
  VARIANT:=python3
endef

define Package/python3-dnslib/description
  This Python module acts as a DNS tap receiver and streams
  as JSON payload to remote address. It then allows the creation
  of dashboard for dns servers with Kibana for example.
endef

$(eval $(call Py3Package,python3-dnslib))
$(eval $(call BuildPackage,python3-dnslib))
$(eval $(call BuildPackage,python3-dnslib-src))
