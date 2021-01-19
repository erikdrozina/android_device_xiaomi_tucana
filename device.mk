#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

PRODUCT_CHARACTERISTICS := nosdcard

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/xiaomi/tucana/tucana-vendor.mk)

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 29
PRODUCT_EXTRA_VNDK_VERSIONS := 29

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Properties
-include $(LOCAL_PATH)/system_prop.mk
-include $(LOCAL_PATH)/product_prop.mk
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Permissions
PRODUCT_COPY_FILES += \
   frameworks/native/data/etc/android.hardware.telephony.ims.xml:system/etc/permissions/android.hardware.telephony.ims.xml

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    tinymix

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy_engine_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/audio_policy_engine_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/audio/audio_policy_configuration.xml

# ANT+
PRODUCT_PACKAGES += \
    AntHalService

# Bluetooth
PRODUCT_PACKAGES += \
    BluetoothQti

# Camera
PRODUCT_PACKAGES += \
    Snap

# Device-specific settings
PRODUCT_PACKAGES += \
    XiaomiParts

# Display
PRODUCT_PACKAGES += \
    libdisplayconfig \
    libqdMetaData \
    libqdMetaData.system \
    libvulkan

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qdcm_calib_data_xiaomi_f4_36_02_0b_fhd_cmd_dsi_panel.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/qdcm_calib_data_xiaomi_f4_36_02_0b_fhd_cmd_dsi_panel.xml \
    $(LOCAL_PATH)/configs/qdcm_calib_data_xiaomi_f4_41_06_0a_fhd_cmd_dsi_panel.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/qdcm_calib_data_xiaomi_f4_41_06_0a_fhd_cmd_dsi_panel.xml \
    $(LOCAL_PATH)/configs/qdcm_calib_data_xiaomi_f4_42_06_0c_fhd_cmd_dsi_panel.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/qdcm_calib_data_xiaomi_f4_42_06_0c_fhd_cmd_dsi_panel.xml

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

# Fingerprint
PRODUCT_PACKAGES += \
    lineage.biometrics.fingerprint.inscreen@1.0-service.tucana

PRODUCT_COPY_FILES += \
   vendor/arrow/config/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml:system/etc/permissions/vendor.lineage.biometrics.fingerprint.inscreen.xml

TARGET_HAS_FOD := true

# FM
PRODUCT_PACKAGES += \
    FM2 \
    libqcomfm_jni \
    qcom.fmradio

# fstab
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0 \
    libhidltransport \
    libhwbinder

# IFAA manager
PRODUCT_PACKAGES += \
    org.ifaa.android.manager

PRODUCT_BOOT_JARS += \
    org.ifaa.android.manager

# Init
PRODUCT_PACKAGES += \
    init.mi_thermald.rc \
    init.qcom.rc

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/keylayout/sm8150-tavil-snd-card_Button_Jack.kl:system/usr/keylayout/sm8150-tavil-snd-card_Button_Jack.kl
    
# IR
PRODUCT_PACKAGES += \
    android.hardware.ir@1.0-impl \
    android.hardware.ir@1.0-service

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl.tucana

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_profiles_vendor.xml:system/etc/media_profiles_vendor.xml

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Notch style overlay
PRODUCT_PACKAGES += \
    NotchNoFillOverlay

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    com.gsma.services.nfc \
    NfcNci \
    SecureElement \
    Tag

# OTA
PRODUCT_HOST_PACKAGES += \
    signapk

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.2-service.tucana

# Ril
PRODUCT_PACKAGES += \
    android.hardware.radio@1.4

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH) \
    vendor/nxp/opensource/sn100x

# Telephony
PRODUCT_PACKAGES += \
    ims-ext-common \
    ims_ext_common.xml \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# TextClassifier
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# Vendor Overlays
PRODUCT_PACKAGES += \
    AospFrameworkResOverlay \
    AospWifiResOverlay \
    CarrierConfigResCommon \
    CellBroadcastReceiverResCommon \
    DevicesAndroidOverlay \
    DevicesOverlay \
    DocumentsUIOverlay \
    ElderlyNavigationBarOverlay \
    FrameworksResCommon \
    FrameworksResTarget \
    GestureLineOverlay \
    MccMncOverlay \
    MiuiBiometricResOverlay \
    MiuiBluetoothOverlay \
    MiuiFrameworkResOverlay \
    MiuiSettingsResOverlay \
    MiuiSystemUIResOverlay \
    OptInAppOverlay \
    SystemUIResCommon \
    TelecommResCommon \
    TelephonyResCommon

# VNDK
PRODUCT_COPY_FILES += \
    prebuilts/vndk/v29/arm64/arch-arm-armv8-a/shared/vndk-sp/libcutils.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libcutils-v29.so \
    prebuilts/vndk/v29/arm64/arch-arm64-armv8-a/shared/vndk-sp/libcutils.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libcutils-v29.so

# WiFi
PRODUCT_PACKAGES += \
    TetheringConfigOverlay \
    WifiOverlay

# WiFi Display
PRODUCT_PACKAGES += \
    libdisplayconfig \
    libdisplayconfig.vendor \
    libnl \
    libqdMetaData \
    libqdMetaData.system

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-wfd.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-wfd.xml

# WFD
PRODUCT_PACKAGES += \
    libaacwrapper \
    libnl

PRODUCT_BOOT_JARS += \
    WfdCommon
