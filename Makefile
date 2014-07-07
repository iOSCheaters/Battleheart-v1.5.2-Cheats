ARCHS = arm64 armv7

include theos/makefiles/common.mk

TWEAK_NAME = BattleheartHack
BattleheartHack_FILES = Tweak.xm
BattleheartHack_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += battlehearthack
include $(THEOS_MAKE_PATH)/aggregate.mk
