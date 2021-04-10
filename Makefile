TARGET := iphone:clang:latest:13.0
INSTALL_TARGET_PROCESSES = SpringBoard

DEBUG=0
FINALPACKAGE=1

PREFIX=$(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/

SYSROOT=$(THEOS)/sdks/iphoneos14.0.sdk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Timestamp

Timestamp_FILES = Tweak.xm
Timestamp_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
