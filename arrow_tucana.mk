#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from tucana device
$(call inherit-product, device/xiaomi/tucana/device.mk)

# Inherit from Arrow vendor
$(call inherit-product, vendor/arrow/config/common.mk)

#Screen Dimensions
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

#Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_tucana
PRODUCT_DEVICE := tucana
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=tucana

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

