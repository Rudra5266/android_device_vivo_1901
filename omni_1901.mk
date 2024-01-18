#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from 1901 device
$(call inherit-product, device/vivo/1901/device.mk)

PRODUCT_DEVICE := 1901
PRODUCT_NAME := omni_1901
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo 1901
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k62v1_64_bsp-user 11 RP1A.200720.012 eng.compil.20230306.183730 release-keys"

BUILD_FINGERPRINT := vivo/1901/1901:11/RP1A.200720.012/compiler0306183238:user/release-keys
