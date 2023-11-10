# SPDX-License-Identifier: Apache-2.0

## Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Inherit from xcover4lte device
$(call inherit-product, device/samsung/xcover4ltexx/device.mk)

## Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

## Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

## Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier, this must come after all inclusions
PRODUCT_NAME := lineage_xcover4ltexx
PRODUCT_DEVICE := xcover4ltexx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G390F
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=xcover4ltexx \
  TARGET_DEVICE=xcover4ltexx \
  PRIVATE_BUILD_DESC="xcover4ltex-user 9.0 PPR1.180610.011 G390FXXS6CTI2 release-keys"

BUILD_FINGERPRINT := samsung/xcover4ltexx/xcover4lte:9/PPR1.180610.011/G390FXXS6CTI2:user/release-keys
