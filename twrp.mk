# Custom Platform Version and Security Patch
# TWRP Defaults
PLATFORM_VERSION := 20.1.0
PLATFORM_SECURITY_PATCH := 2099-12-31

# Recovery blobs
TARGET_RECOVERY_DEVICE_MODULES := libbinder libgui libui libEGL libGLESv2 libsync tzdata
TW_RECOVERY_ADDITIONAL_RELINK_FILES += $(TARGET_OUT)/usr/share/zoneinfo/tzdata
TW_USE_TOOLBOX := true
TW_INCLUDE_NTFS_3G := true

# TWRP Сonfigurations
TW_IGNORE_ABS_MT_TRACKING_ID := true
TWHAVE_SELINUX := true
TW_EXTRA_LANGUAGES := true
TW_NEW_ION_HEAP := true
TW_EXCLUDE_SUPERSU := true
TW_INPUT_BLACKLIST := "hbtp_vm"

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# TWRP UI
BOARD_HAS_NO_SELECT_BUTTON := true
TW_NO_SCREEN_BLANK := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_CUSTOM_BATTERY_PATH := "/sys/class/power_supply/battery"
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone9/temp

# TWRP Storage
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_FUSE_EXFAT := true
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TARGET_NO_SEPARATE_RECOVERY := true

# TWRP Crypto
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/bootdevice/by-name/userdata"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,barrier=1,noauto_da_alloc,discard"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"

TW_THEME := landscape_hdpi

TW_LOCAL := device/sony/karin_windy/twrp/vendor
TWRP_OUT := recovery/root

# TS config
PRODUCT_COPY_FILES += \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x0000.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x0000.cfg \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x0700.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x0700.cfg \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x0701.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x0701.cfg \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x0702.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x0702.cfg \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x0704.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x0704.cfg \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x0705.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x0705.cfg \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x0706.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x0706.cfg \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x0708.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x0708.cfg \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x0709.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x0709.cfg \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x070A.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x070A.cfg \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x070C.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x070C.cfg \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x070D.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x070D.cfg \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x0710.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x0710.cfg \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x0717.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x0717.cfg \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x071B.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x071B.cfg \
    $(TW_LOCAL)/etc/touch_fusion_panel_id_0x071F.cfg:$(TWRP_OUT)/system/vendor/etc/touch_fusion_panel_id_0x071F.cfg

# TS FW loader
PRODUCT_COPY_FILES += \
    $(TW_LOCAL)/bin/touch_fusion:$(TWRP_OUT)/system/vendor/bin/touch_fusion

# TS FW
PRODUCT_COPY_FILES += \
    $(TW_LOCAL)/firmware/max11945.bin:$(TWRP_OUT)/vendor/firmware/max11945.bin
