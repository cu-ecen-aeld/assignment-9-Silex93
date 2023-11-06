
##############################################################
#
# AESD_CHAR Package
#
##############################################################


AESD_CHAR_VERSION = 'a4be08b4d13428d18af53033fd794630777c3bd2'

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
