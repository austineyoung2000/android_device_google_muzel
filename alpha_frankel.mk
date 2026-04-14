#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := frankel
DEVICE_PATH := device/google/muzel
VENDOR_PATH := vendor/google/frankel
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 10
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

#AlphaDroid Flags

# Device config
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDES_AUDIOFX := false
TARGET_FACE_UNLOCK_SUPPORTED := true

# Build config

# append time of day to zip
ALPHA_VERSION_APPEND_TIME_OF_DAY := false

# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
TARGET_BUILD_PACKAGE := 3

# (valid only for GAPPS builds)
TARGET_INCLUDE_GOOGLE_COMMS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := false
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_HAS_UDFPS := true

# Debugging
TARGET_INCLUDE_MATLOG := true
WITH_ADB_INSECURE := false

# Maintainer
ALPHA_BUILD_TYPE := Oficial
ALPHA_MAINTAINER := EliteDarkKaiser

# Boot animation
TARGET_SCREEN_HEIGHT := 2424
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="frankel-user 16 BP4A.260205.001 14624666 release-keys" \
    BuildFingerprint=google/frankel/frankel:16/BP4A.260205.001/14624666:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
