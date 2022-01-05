#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common OctaviOS stuff
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Octavi-stuff
OCTAVI_BUILD_TYPE := OFFICIAL
TARGET_SUPPORTS_QUICK_TAP := true

# Inherit from lavender device
$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, $(LOCAL_PATH)/device-hidl.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := octavi_lavender
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lavender" \
    PRODUCT_NAME="lavender" \
    PRIVATE_BUILD_DESC="coral-user 12 SQ1A.211205.008 7888514 release-keys"

BUILD_FINGERPRINT :="google/coral/coral:12/SQ1A.211205.008/7888514:user/release-keys"
