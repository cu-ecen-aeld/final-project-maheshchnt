
##############################################################
#
# AESD-PROJECT
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESD_PROJECT_VERSION = 1f0f87cc9456e5f6fa790d31da92f476ab38faf3
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_PROJECT_SITE = git@github.com:cu-ecen-aeld/final-project-abaa3023.git
AESD_PROJECT_SITE_METHOD = git
AESD_PROJECT_GIT_SUBMODULES = YES

define AESD_PROJECT_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/client_app all
endef

define AESD_PROJECT_INSTALL_TARGET_CMDS
#	$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/etc/finder-app/conf/
#	$(INSTALL) -m 0755 $(@D)/conf/* $(TARGET_DIR)/etc/finder-app/conf/
#	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment4/* $(TARGET_DIR)/bin
#       $(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin
       $(INSTALL) -m 0755 $(@D)/client_app/S98projectmodules.sh $(TARGET_DIR)/etc/init.d
       $(INSTALL) -m 0755 $(@D)/client_app/seqv4l2 $(TARGET_DIR)/usr/bin
endef

AESD_PROJECT_MODULE_SUBDIRS += gpio_driver/

$(eval $(kernel-module))
$(eval $(generic-package))

