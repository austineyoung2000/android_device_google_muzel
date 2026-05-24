#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := blazer
DEVICE_PATH := device/google/muzel
VENDOR_PATH := vendor/google/blazer
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 10 Pro
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

AXION_CAMERA_REAR_INFO := 50,50,48
AXION_CAMERA_FRONT_INFO := 42
AXION_MAINTAINER ?= EliteDarkKaiser
AXION_PROCESSOR := Tensor_G5

# Enables Google Face Unlock (GFU)
TARGET_SUPPORTS_GFU := true
# Device Supports Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Boot animation
TARGET_SCREEN_HEIGHT := 2856
TARGET_SCREEN_WIDTH := 1280

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="blazer-user 16 BP4A.260205.001 14624666 release-keys" \
    BuildFingerprint=google/blazer/blazer:16/BP4A.260205.001/14624666:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
