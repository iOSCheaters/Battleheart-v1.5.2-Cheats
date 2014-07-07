include theos/makefiles/common.mk

BUNDLE_NAME = BattleheartHack
BattleheartHack_FILES = BattleheartHack.mm
BattleheartHack_INSTALL_PATH = /Library/PreferenceBundles
BattleheartHack_FRAMEWORKS = UIKit
BattleheartHack_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/BattleheartHack.plist$(ECHO_END)
