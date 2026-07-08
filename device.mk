#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
# Copyright (C) 2026 ziadlawatey
#
# SPDX-License-Identifier: Apache-2.0
#

# Base Device Path
LOCAL_PATH := device/samsung/gta4lve

# Credits :D
TW_DEVICE_VERSION := Ziad Lawatey

# Core Software Packages & Fastbootd Daemons
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Core Graphics Allocator HAL Dependencies
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl-21

# IPC, Binder, & Service Managers
PRODUCT_PACKAGES += \
    hwservicemanager \
    vndservicemanager

# Hardware Health & Power Management Binaries
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service

# Device Target Identifiers
TARGET_OTA_ASSERT_DEVICE := gta4lve
PRODUCT_SHIPPING_API_LEVEL := 30
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Anti-Rollback Bypasses & Security Patch Levels
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
PLATFORM_SECURITY_PATCH := 2127-12-31
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
BOOT_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# PitchBlack Recovery Project Configuration
PB_OFFICIAL := true
PB_DISABLE_DEFAULT_DM_VERITY := true

# Core IPC and Hardware Abstraction Services
BOARD_HAS_VND_BINDER := true
TW_USE_LEGACY_BATTERY_SERVICES := true

# Graphics Drivers & Display Optimization
TARGET_USES_HWC2 := true
TARGET_SCREEN_DENSITY := 240
TW_FRAMERATE := 60
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# Brightness Backlight Nodes
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 160
TW_BRIGHTNESS_PATH := "/sys/class/backlight/sprd_backlight/brightness"
TW_SECONDARY_BRIGHTNESS_PATH := "/sys/devices/platform/soc/soc:ap-ahb/20400000.dsi/20400000.dsi.0/display/panel0/sprd_backlight/brightness"

# Screen Blanking Behavior
TW_NO_SCREEN_BLANK := false
TW_SCREEN_BLANK_ON_BOOT := false

# Touch Input & Temperature Nodes
TW_SUPPORT_INPUT_AIDL := true
TW_SUPPORT_INPUT_HIDL := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone2/temp"
TW_FORCE_CPUINFO := true

# Storage Mounting & Extended Filesystem Drivers
TW_USE_TOOLBOX := true
TW_NO_BIND_SYSTEM := true
TW_HAS_LARGE_FILESYSTEM := true
RECOVERY_SDCARD_ON_DATA := true
TW_SKIP_ADDITIONAL_FSTAB := true
ALLOW_LOGICAL_PARTITION_WIPE := true

TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_FAT := true
TW_INCLUDE_EXFAT := true
TW_INCLUDE_FUSE_EXFAT := true
TW_ENABLE_FS_COMPRESSION := true

# Logical Partition & Repacking Utilities
TW_INCLUDE_LPTOOLS := true
TW_INCLUDE_LPDUMP := true
TW_INCLUDE_REPACKTOOLS := true

# Cryptographic Decryption Frameworks
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_INCLUDE_OMAPI := true
TW_USE_FSCRYPT_POLICY := 1

# USB, ADB, and MTP Initialization Configurations
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_USE_NEW_MINADBD := true
TW_HAS_MTP := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_LIBRESETPROP := true

# Boot and Reboot Target Menus
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_INCLUDE_FASTBOOTD := true

# User Interface Theme & Screenshot Options
TW_THEME := portrait_hdpi
TW_DEFAULT_LANGUAGE := en
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_FB2PNG := true

# Compilation Exclusions and Logging Controls
TW_EXCLUDE_APEX := true
TW_EXCLUDE_TWRPAPP := true
TW_NO_LEGACY_PROPS := true
TWRP_INCLUDE_LOGCAT := true
TW_INCLUDE_LIBUNWIND := true
