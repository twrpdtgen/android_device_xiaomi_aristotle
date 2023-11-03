#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from aristotle device
$(call inherit-product, device/xiaomi/aristotle/device.mk)

PRODUCT_DEVICE := aristotle
PRODUCT_NAME := omni_aristotle
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2306EPN60G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aristotle-user 12 SP1A.210812.016 V14.0.5.0.TMFMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/aristotle/aristotle:12/SP1A.210812.016/V14.0.5.0.TMFMIXM:user/release-keys
