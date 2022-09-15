#
# origamiOS Audio Files
#

LOCAL_PATH := vendor/origami/audio

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/alarms,$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/notifications,$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/ringtones,$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones)

PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.alarm_alert=Awakening.ogg \
    ro.config.notification_sound=Eureka.ogg \
    ro.config.ringtone=Your_New_Adventure.ogg
