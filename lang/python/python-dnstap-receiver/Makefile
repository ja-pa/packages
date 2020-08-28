include $(TOPDIR)/rules.mk

PKG_NAME:=python-dnstap-receiver
PKG_VERSION:=0.0.1
PKG_RELEASE:=1

PYPI_NAME:=dnstap_receiver
PKG_HASH:=459ed5282aff45f49a47b600079258979070b4b28b8ebb4098088187643f4de5

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

include ../pypi.mk
include $(INCLUDE_DIR)/package.mk
include ../python3-package.mk

define Package/python3-dnstap-receiver
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Dnstap to JSON stream receiver
  URL:=https://github.com/dmachard/dnstap-receiver
  DEPENDS:=+python3-light +python3-dnslib
  VARIANT:=python3
endef

define Package/python3-dnstap-receiver/description
  This Python module acts as a DNS tap receiver and streams
  as JSON payload to remote address. It then allows the creation
  of dashboard for dns servers with Kibana for example.
endef

$(eval $(call Py3Package,python3-dnstap-receiver))
$(eval $(call BuildPackage,python3-dnstap-receiver))
$(eval $(call BuildPackage,python3-dnstap-receiver-src))
