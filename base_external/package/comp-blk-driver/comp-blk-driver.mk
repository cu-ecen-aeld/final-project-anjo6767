
##############################################################
#
# comp-blk-driver
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
COMP_BLK_DRIVER_VERSION = 7a7506b3c9952f6b7128065e31e4aa9fe68a1e64
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
COMP_BLK_DRIVER_SITE = git@github.com:cu-ecen-aeld/final-project-vaishnavijadhav19.git
COMP_BLK_DRIVER_SITE_METHOD = git
COMP_BLK_DRIVER_MODULE_SUBDIRS = comp-blk-driver



$(eval $(kernel-module))
$(eval $(generic-package))
