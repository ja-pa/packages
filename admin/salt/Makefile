#
# Copyright (C) 2021 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=salt
PKG_VERSION:=3003
PKG_RELEASE:=1

PYPI_NAME:=salt
PKG_HASH:=c4689733dfe738cf287e31cb3fdd3cb8d1606295202b18d8e66d48d372d5ca77

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/salt
  SECTION:=admin
  CATEGORY:=Administration
  TITLE:=saltstack
  URL:=https://saltproject.io/
  DEPENDS:= \
    +python \
    +python3-yaml \
    +python3-zmq \
    +python3-cryptodomex \
    +python3-msgpack
endef

define Package/salt/description
  Software to automate the management and configuration of any infrastructure or application at scale.
endef

define Package/salt/conffiles
/etc/conf/master
/etc/conf/minion
/etc/conf/proxy
/etc/confroster
endef

define Py3Package/salt/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/scripts/salt-{api,call,cloud,cp,extend,key,master,minion,proxy,run,ssh,syndic,unity} $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/scripts/salt $(1)/usr/bin
	$(INSTALL_DIR) $(1)/etc/salt
	$(CP) $(PKG_BUILD_DIR)/conf/{master,minion,proxy,roster} $(1)/etc/salt/
endef

$(eval $(call Py3Package,salt))
$(eval $(call BuildPackage,salt))
$(eval $(call BuildPackage,salt-src))
