ifneq ($(__ninja_mk_inc),1)
__ninja_mk_inc=1

HOST_NINJA_DIR:=$(STAGING_DIR_HOSTPKG)
HOST_NINJA_BIN:=$(HOST_NINJA_DIR)/bin/ninja

define Build/Compile/Ninja
	cd $(PKG_BUILD_DIR) && $(HOST_NINJA_BIN) .
endef

endif
