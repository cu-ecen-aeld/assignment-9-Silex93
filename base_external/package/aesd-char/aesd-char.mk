
##############################################################
#
# AESD_CHAR Package
#
##############################################################


AESD_CHAR_VERSION = 'be6231965c3460ded5c9603399c79fdbb491f15a'

AESD_CHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-Silex93.git'
AESD_CHAR_SITE_METHOD = git
AESD_CHAR_GIT_SUBMODULES = YES

AESD_CHAR_MODULE_SUBDIRS = aesd-char-driver


define AESD_CHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/aesd-char-driver/ $(TARGET_DIR)/etc/aesd-char-driver/
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/* $(TARGET_DIR)/etc/aesd-char-driver/
endef

$(eval $(kernel-module))
$(eval $(generic-package))
