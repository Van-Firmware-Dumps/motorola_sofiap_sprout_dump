#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from sofiap_sprout device
$(call inherit-product, device/motorola/sofiap_sprout/device.mk)

PRODUCT_DEVICE := sofiap_sprout
PRODUCT_NAME := lineage_sofiap_sprout
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g pro
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sofiap_ao-user 12 S0PRS32M.44-11-10-26 86991 release-keys"

BUILD_FINGERPRINT := motorola/sofiap_ao/sofiap_sprout:12/S0PRS32M.44-11-10-26/86991:user/release-keys
