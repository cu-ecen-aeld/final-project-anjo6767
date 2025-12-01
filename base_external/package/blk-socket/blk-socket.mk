
##############################################################
#
# blk-socket-driver
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
BLK_SOCKET_VERSION = ddd5f544b120434c81c3483d7f58c9cd0f41aa56
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
BLK_SOCKET_SITE = git@github.com:cu-ecen-aeld/final-project-vaishnavijadhav19.git
BLK_SOCKET_SITE_METHOD = git
BLK_SOCKET_GIT_SUBMODULES = YES
BLK_SOCKET_DEPENDENCIES = openssl

#define BLK_SOCKET_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/blk-socket
	
define BLK_SOCKET_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" CFLAGS="$(TARGET_CFLAGS)" LDFLAGS="$(TARGET_LDFLAGS) -lssl -lcrypto" -C $(@D)/blk-socket
endef

# -------- Install step --------
# Copy binaries into /usr/bin on the target
define BLK_SOCKET_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/blk-socket/sendfile_user_server $(TARGET_DIR)/usr/bin/sendfile_user_server
	$(INSTALL) -D -m 0755 $(@D)/blk-socket/sendfile_user_client $(TARGET_DIR)/usr/bin/sendfile_user_client
	

endef




$(eval $(generic-package))
