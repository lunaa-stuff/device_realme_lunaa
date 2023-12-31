#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lunaa device
$(call inherit-product, device/realme/lunaa/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

#PixelStar Flags
TARGET_INCLUDE_WIFI_EXT := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_QUICK_TAP  := true
TARGET_WITHOUT_DESKTOPMODE := true
PIXEL_LAUNCHER_VARIANT := glance23

#Skip Aperture Camera
PRODUCT_NO_CAMERA := false

# PixelStar Maintainer Flags

PIXELSTAR_MAINTAINER := TANUJ_D
CUSTOM_BUILD_TYPE := Community

#Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080


PRODUCT_NAME := aosp_lunaa
PRODUCT_DEVICE := lunaa
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3360

PRODUCT_SYSTEM_NAME := RE54ABL1
PRODUCT_SYSTEM_DEVICE := RE54ABL1

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="RMX3360-user 13 TP1A.220905.001 R.12be919_4c6e-5d979 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_NAME) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := realme/RMX3360/RE54ABL1:13/TP1A.220905.001/R.12be919_4c6e-5d979:user/release-keys
