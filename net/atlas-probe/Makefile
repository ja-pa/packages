#
# Copyright (C) 2019-2020 CZ.NIC z.s.p.o. (https://www.nic.cz/)
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=atlas-probe
PKG_VERSION:=2.2.0
PKG_RELEASE:=1

PKG_SOURCE:=ripe-atlas-probe-busybox-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/RIPE-NCC/ripe-atlas-probe-busybox/archive/v$(PKG_VERSION)
PKG_HASH:=4fd1b5ace8218239d2395ef912080d22fad46a27ff7836b176d6634e79bfaa18

PKG_BUILD_DIR:=$(BUILD_DIR)/ripe-atlas-probe-busybox-$(PKG_VERSION)

PKG_MAINTAINER:=CZ.NIC <packaging@turris.cz>
PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=LICENSE

PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/atlas-probe
  SECTION:=net
  CATEGORY:=Network
  TITLE:=RIPE Atlas probe measurement
  DEPENDS:=+librt +libopenssl +openssh-client +sudo
  USERID:=atlas=444:atlas=444
  URL:=https://atlas.ripe.net/
endef

define Package/atlas-probe/description
  RIPE Atlas is a global, open, distributed Internet measurement platform,
  consisting of thousands of measurement devices that measure Internet
  connectivity in real time.
endef

define Download/atlas-probe-scripts
  VERSION:=824f7b41d831f421c19280fbeeec3a9557f028b4
  SUBDIR:=atlas-probe-scripts
  FILE:=atlas-probe-scripts-$$(VERSION).tar.xz
  URL:=https://gitlab.labs.nic.cz/turris/ripe-atlas-software-probe.git
  MIRROR_HASH:=9d6437cae3c5c0eccdda643f5957dee53c92799df388b48d50e3aa87cd658dd9
  PROTO:=git
endef
$(eval $(call Download,atlas-probe-scripts))

define Package/atlas-probe/conffiles
/etc/config/atlas
/usr/libexec/atlas-probe-scripts/state/config.txt
endef

TARGET_CFLAGS += $(FPIC)

CONFIGURE_ARGS += \
	--disable-shared \
	--enable-static

CONFIGURE_PATH = libevent-2.1.11-stable
TARGET_LDFLAGS = -L$(PKG_BUILD_DIR)/$(CONFIGURE_PATH)/.libs

define Prepare/atlas-probe-scripts
	$(eval $(Download/atlas-probe-scripts))
	xzcat $(DL_DIR)/$(FILE) | tar -C $(PKG_BUILD_DIR) $(TAR_OPTIONS)
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(Prepare/atlas-probe-scripts)
endef

define Build/Compile
	+$(MAKE_VARS) \
	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/$(CONFIGURE_PATH) \
		$(MAKE_FLAGS)
	+$(MAKE_VARS) \
	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR) \
		$(MAKE_FLAGS)
endef

TMP_BASE_DIR:=/tmp/ripe_atlas_probe
SCRIPTS_DIR:=/usr/libexec/atlas-probe-scripts

define Package/atlas-probe-scripts/install
	$(INSTALL_DIR) $(1)/$(SCRIPTS_DIR)
	$(INSTALL_DIR) $(1)/$(SCRIPTS_DIR)/{etc,state,bin/arch,bin/bin}

	# Copy config
	$(CP) $(PKG_BUILD_DIR)/atlas-probe-scripts/atlas-config/etc/* $(1)/$(SCRIPTS_DIR)/etc/

	# Copy firmware version
	$(CP) $(PKG_BUILD_DIR)/atlas-probe-scripts/atlas-config/state/FIRMWARE_APPS_VERSION $(1)/$(SCRIPTS_DIR)/state/
	# Set probe mode
	echo "prod" > $(1)/$(SCRIPTS_DIR)/state/mode

	# Copy scripts
	$(CP) $(PKG_BUILD_DIR)/atlas-probe-scripts/bin/{ATLAS,common-pre.sh,common.sh,reginit.sh,resolvconf} $(1)/$(SCRIPTS_DIR)/bin/
	$(CP) $(PKG_BUILD_DIR)/atlas-probe-scripts/bin/arch/{linux,openwrt-sw-probe} $(1)/$(SCRIPTS_DIR)/bin/arch/

	# Create config info
	echo "DEVICE_NAME=openwrt-sw-probe" > $(1)/$(SCRIPTS_DIR)/bin/config.sh
	echo "ATLAS_BASE=$(SCRIPTS_DIR)" >> $(1)/$(SCRIPTS_DIR)/bin/config.sh
	echo "ATLAS_STATIC=$(SCRIPTS_DIR)" >> $(1)/$(SCRIPTS_DIR)/bin/config.sh
	echo "SUB_ARCH=openwrt-$(ARCH)-$(PKG_VERSION)-$(PKG_RELEASE)" >> $(1)/$(SCRIPTS_DIR)/bin/bin/config.sh

	# Enable sending interface traffic statistics as Atlas measurement results
	echo "RXTXRPT=yes" > $(1)/$(SCRIPTS_DIR)/state/config.txt

	# Fix permision
	chmod 755 $(1)/$(SCRIPTS_DIR)/bin

	# Create softlinks for writable dirs
	$(LN) $(TMP_BASE_DIR)/crons $(1)/$(SCRIPTS_DIR)/crons
	$(LN) $(TMP_BASE_DIR)/data $(1)/$(SCRIPTS_DIR)/data
	$(LN) $(TMP_BASE_DIR)/run $(1)/$(SCRIPTS_DIR)/run
	$(LN) $(TMP_BASE_DIR)/status $(1)/$(SCRIPTS_DIR)/status

	# Copy init and config
	$(INSTALL_DIR) $(1)/etc/init.d/
	$(INSTALL_BIN) ./files/atlas.init $(1)/etc/init.d/atlas

	$(INSTALL_DIR) $(1)/etc/config/
	$(INSTALL_CONF) ./files/atlas.conf $(1)/etc/config/atlas
endef

define Package/atlas-probe-busybox/install
	+$(MAKE_VARS) \
	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR) \
		$(MAKE_FLAGS) CONFIG_PREFIX=$(1)/usr/libexec/atlas-probe install
	$(INSTALL_DIR) $(1)/usr/libexec/atlas-probe/state
	echo $(PKG_VERSION) > $(1)/usr/libexec/atlas-probe/state/VERSION
endef

define Package/atlas-probe/install
	$(Package/atlas-probe-scripts/install)
	$(Package/atlas-probe-busybox/install)
endef

$(eval $(call BuildPackage,atlas-probe))
