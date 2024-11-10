ZHA_TOOLKIT_VERSION = v1.1.21 
ZHA_TOOLKIT_SOURCE = $(ZHA_TOOLKIT_VERSION).tar.gz
ZHA_TOOLKIT_SITE = https://github.com/mdeweerd/zha-toolkit/archive/refs/tags

define ZHA_TOOLKIT_INSTALL_TARGET_CMDS
	cp -a $(@D)/custom_components $(TARGET_DIR)/usr/lib
endef

$(eval $(generic-package))
