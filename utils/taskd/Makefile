include $(TOPDIR)/rules.mk

PKG_NAME:=taskd
PKG_VERSION:=1.2.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_MIRROR_HASH:=6a055540af4e9b49099f4abadc32f1ae8ce5ddaac7080701f5caeb0efee52ad7
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_URL:=https://github.com/GothenburgBitFactory/taskserver.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=13269ffa72622a4d6e8241e79038f4afcdc27fb0


PKG_MAINTAINER:=Jan Pavlinec <jan.pavlinec@nic.cz>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/taskd
  TITLE:=taskserver
  SECTION:=utils
  CATEGORY:=Utilities
  URL:=https://taskwarrior.org/
  DEPENDS:=+libstdcpp +libuuid +libgnutls
endef

define Package/taskd/description
 Taskserver is a daemon or service that will allow you to share tasks
 among different client applications, primarily Taskwarrior.
endef

define Package/taskd/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/{taskd,taskdctl} $(1)/usr/bin/
endef

$(eval $(call BuildPackage,taskd))
