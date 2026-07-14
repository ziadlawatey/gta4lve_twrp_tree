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
