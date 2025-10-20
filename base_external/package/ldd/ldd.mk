################################################################################
# ldd3
################################################################################


#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = 73a842c208db5d022309dd524f8f58c497a18706
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-anjo6767.git
LDD_SITE_METHOD = git

LDD_MODULE_SUBDIRS = \
        misc-modules \
        scull

define LDD_INSTALL_TARGET_CMDS

	 mkdir -p $(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/extra

	# Install the .ko files built in misc-modules and scull into /lib/modules/…/extra
	$(INSTALL) -m 0755 $(@D)/misc-modules/*.ko $(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/extra
	$(INSTALL) -m 0755 $(@D)/scull/*.ko $(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/extra
	#$(INSTALL) -D -m 0755 $(LDD_PKGDIR)/S98lddmodules $(TARGET_DIR)/etc/init.d/S98lddmodules
	#$(INSTALL) -D -m 0755 $(@D)/../package/ldd/S98lddmodules $(TARGET_DIR)/etc/init.d/S98lddmodules

endef


$(eval $(kernel-module))
$(eval $(generic-package))



