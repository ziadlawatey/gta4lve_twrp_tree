#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
# Copyright (C) 2026 ziadlawatey
#
# SPDX-License-Identifier: Apache-2.0
#

# Base Device Path Configuration
DEVICE_PATH := device/samsung/gta4lve

# Build System Context & Dependency Handling
ALLOW_MISSING_DEPENDENCIES := true

# Primary Target Architecture (64-bit)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a75

# Secondary Target Architecture (32-bit Fallback)
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

# Target Platform & SoC Code
TARGET_BOARD_PLATFORM := ums512

# APEX Packages Environment Setup
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Bootloader Properties
TARGET_BOOTLOADER_BOARD_NAME := P15945AA1
TARGET_NO_BOOTLOADER := true

# Kernel Structure, Offsets, & Boot Image Configurations
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyS0,115200n8 loop.max_part=7
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_IMAGE_NAME := Image

# Mkbootimg Command Line Appended Arguments
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

# Inline Kernel Compilation Configuration (Defaults)
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_CONFIG := gta4lve_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/gta4lve

# Prebuilt Kernel Binary Fallbacks (Overrides Inline Configuration)
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
    TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
    TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
    BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
    BOARD_INCLUDE_DTB_IN_BOOTIMG := 
    BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
    BOARD_KERNEL_SEPARATED_DTBO := 
endif

# Physical Partition Size Definitions & Block Settings
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_HAS_LARGE_FILESYSTEM := true

# Target Filesystem Compression Formats
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Android Super Dynamic Partition Parameters
BOARD_SUPER_PARTITION_SIZE := 5913023740 
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := system system_ext vendor product
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 5913023740 
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 3618910208

# Recovery Graphic Environment & Filesystem Flags
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Hardware Cryptographic Metadata Partitions
BOARD_USES_METADATA_PARTITION := true

# Android Verified Boot (AVB) Signing Configuration
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Anti-Rollback Bypasses & Security Patch Levels
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
PLATFORM_SECURITY_PATCH := 2127-12-31
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
BOOT_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

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

# Logical Mapping & GSI Flashing Pipelines
TW_ENABLE_ALL_PARTITION_TOOLS := true
TW_INCLUDE_LPTOOLS := true
BOARD_MOVE_GSI_AVB_KEYS_TO_VENDOR_BOOT := true
BOARD_VNDK_VERSION := current

# User Interface Theme & Screenshot Options
TW_THEME := portrait_hdpi
TW_DEFAULT_LANGUAGE := en
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_FB2PNG := true

# Screen Blanking Behavior
TW_SCREEN_BLANK_ON_BOOT := false

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

# Touch Input & Temperature Nodes
TW_SUPPORT_INPUT_AIDL := true
TW_SUPPORT_INPUT_HIDL := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone2/temp"
TW_FORCE_CPUINFO := true

# Logical Partition & Repacking Utilities
TW_INCLUDE_LPTOOLS := true
TW_INCLUDE_LPDUMP := true
TW_INCLUDE_REPACKTOOLS := true

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

# Compilation Exclusions and Logging Controls
TW_EXCLUDE_APEX := true
TW_EXCLUDE_TWRPAPP := true
TW_NO_LEGACY_PROPS := true
TWRP_INCLUDE_LOGCAT := true
TW_INCLUDE_LIBUNWIND := true

# Recovery Path Definitions & Configuration Hooks
TARGET_SYSTEM_PROP := \
    $(DEVICE_PATH)/system.prop

TARGET_RECOVERY_FSTAB := \
    $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

TARGET_BOARD_INFO_FILE := \
    $(DEVICE_PATH)/board-info.txt
