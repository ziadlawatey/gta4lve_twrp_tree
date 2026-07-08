#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from gta4lve device
$(call inherit-product, device/samsung/gta4lve/device.mk)

PRODUCT_DEVICE := gta4lve
PRODUCT_NAME := twrp_gta4lve
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T509
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta4lvexx-user 11 RP1A.200720.012 T509XXS3AXJ2 release-keys"

BUILD_FINGERPRINT := samsung/gta4lvexx/gta4lve:11/RP1A.200720.012/T509XXS3AXJ2:user/release-keys
