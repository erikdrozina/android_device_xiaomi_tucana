#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/tucana/device.mk)

# Inherit from Superior vendor
$(call inherit-product, vendor/superior/config/common.mk)

TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

TARGET_BOOT_ANIMATION_RES := 1080
EXTRA_FOD_ANIMATIONS := true
#TARGET_GAPPS_ARCH := arm64

# Launcher
TARGET_LAUNCHER := oplauncher

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := superior_tucana
PRODUCT_DEVICE := tucana
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
