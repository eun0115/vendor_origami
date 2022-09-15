# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED ?= true
ifeq ($(TARGET_FACE_UNLOCK_SUPPORTED),true)
PRODUCT_PACKAGES += \
    FaceUnlockService
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.face_unlock_service.enabled=$(TARGET_FACE_UNLOCK_SUPPORTED)
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.biometrics.face.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.biometrics.face.xml
endif

# Fonts
include vendor/origami/config/fonts.mk

# Extra packages
PRODUCT_PACKAGES += \
     OmniJaws \
     GameMode \

ifneq ($(ORIGAMI_OFFICIAL), true)
PRODUCT_PACKAGES += \
     Updater
    ORIGAMI_BUILDTYPE := OFFICIAL
else
    ORIGAMI_BUILDTYPE := UNOFFICIAL
endif

ifneq ($(ORIGAMI_VERSIONTYPE), beta)
    ORIGAMI_VERSIONTYPE := Beta
endif

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.origami.version=$(ORIGAMI_VERSION) \
    ro.origami.version.display=$(ORIGAMI_DISPLAY_VERSION) \
    ro.origami.build_date=$(ORIGAMI_BUILD_DATE) \
    ro.origami.codename=$(ORIGAMI_CODENAME) \
    ro.origami.build_type=$(ORIGAMI_BUILDTYPE)
