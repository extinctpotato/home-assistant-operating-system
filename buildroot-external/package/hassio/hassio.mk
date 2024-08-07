################################################################################
#
# HAOS
#
################################################################################

HASSIO_VERSION = v4.0.0
HASSIO_LICENSE = Apache License 2.0
# HASSIO_LICENSE_FILES = $(BR2_EXTERNAL_HASSOS_PATH)/../LICENSE
HASSIO_SOURCE = $(patsubst "%",%,$(BR2_PACKAGE_HASSIO_ARCH))-$(patsubst "%",%,$(BR2_PACKAGE_HASSIO_MACHINE))-distro.img.xz 
HASSIO_SITE = https://github.com/extinctpotato/hassio-container-store-builder/releases/download/$(HASSIO_VERSION)
HASSIO_DEPENDENCIES = host-xz

HASSIO_INSTALL_IMAGES = YES

define HASSIO_INSTALL_IMAGES_CMDS
	$(INSTALL) -D -m 0644 $(@D)/data.ext4 $(BINARIES_DIR)/data.ext4
endef

define HASSIO_EXTRACT_CMDS
	xz -c -d $(HASSIO_DL_DIR)/$(HASSIO_SOURCE) > $(@D)/data.ext4
endef

$(eval $(generic-package))
