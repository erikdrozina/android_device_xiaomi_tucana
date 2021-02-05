#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from tucana device
$(call inherit-product, device/xiaomi/tucana/device.mk)

# Inherit from Superior vendor
$(call inherit-product, vendor/superior/config/common.mk)

# Official SuperiorOS
DEVICE_MAINTAINERS="Erikdrozina"

#Screen Dimensions
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

#Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

#Extra FOD Animations
EXTRA_FOD_ANIMATIONS := true

# Face unlock
TARGET_USES_FACE_UNLOCK := true


# Device identifier. This must come after all inclusions.
PRODUCT_NAME := superior_tucana
PRODUCT_DEVICE := tucana
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Note 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRODUCT_NAME=tucana

# Maintainer prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.superior.maintainer=Erikdrozina
#SUPERIOR_OFFICIAL := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

