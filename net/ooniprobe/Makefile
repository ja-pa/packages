#
# Copyright (C) 2019 CZ.NIC, z. s. p. o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=ooniprobe
PKG_VERSION:=3.0.0-beta.3
PKG_RELEASE:=1

PKG_SOURCE:=probe-cli-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://codeload.github.com/ooni/probe-cli/tar.gz/v$(PKG_VERSION)?
PKG_HASH:=4189120201110d8e0558e9ae820136f96129ca10db0981f9e30cb888f451b118
PKG_BUILD_DIR:=$(BUILD_DIR)/probe-cli-$(PKG_VERSION)

PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=ISC
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=golang/host
PKG_BUILD_PARALLEL:=1
PKG_USE_MIPS16:=0

GO_PKG:=github.com/ooni/probe-cli

include $(INCLUDE_DIR)/package.mk
include ../../lang/golang/golang-package.mk

define Package/ooniprobe
  SECTION:=net
  CATEGORY:=Network
  TITLE:=OONI probe
  URL:=https://github.com/ooni/probe-cli
  DEPENDS:=$(GO_ARCH_DEPENDS) +measurement_kit
endef

GO_PKG_LDFLAGS+= -static -lmeasurement_kit

#define Package/dnscrypt-proxy2/install
#	$(call GoPackage/Package/Install/Bin,$(PKG_INSTALL_DIR))
#	$(INSTALL_DIR) $(1)/usr/sbin
#	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/* $(1)/usr/sbin/
#endef

define Package/ooniprobe/description
  ooniprobe aa
endef


$(eval $(call GoBinPackage,ooniprobe))
$(eval $(call BuildPackage,ooniprobe))
