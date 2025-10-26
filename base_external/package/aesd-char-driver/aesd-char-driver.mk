################################################################################
# aesd-char-driver
################################################################################

AESD_CHAR_DRIVER_VERSION = 231a8c940731640b7041852dd640046deb15e8c4

AESD_CHAR_DRIVER_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-anjo6767.git
AESD_CHAR_DRIVER_SITE_METHOD = git

AESD_CHAR_DRIVER_SUBDIR = aesd-char-driver
AESD_CHAR_DRIVER_MODULE_SUBDIRS = $(AESD_CHAR_DRIVER_SUBDIR)

define AESD_CHAR_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -d $(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/extra
	$(INSTALL) -m 0644 $(@D)/$(AESD_CHAR_DRIVER_SUBDIR)/aesdchar.ko \
		$(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/extra/aesdchar.ko
	$(HOST_DIR)/sbin/depmod -a -b $(TARGET_DIR) $(LINUX_VERSION_PROBED) || true
endef

$(eval $(kernel-module))
$(eval $(generic-package))

