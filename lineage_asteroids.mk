#
# SPDX-FileCopyrightText: 2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# GMS: must be set before the common config so telephony.mk and the
# reserved-size logic see it.
WITH_GMS := true

$(call inherit-product, device/nothing/asteroids/device.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Clover Pixel GMS (vendor/pixel/gms). crDroid's partner_gms.mk only looks
# at vendor/partner_gms, so it is inherited here instead.
$(call inherit-product-if-exists, vendor/pixel/gms/products/gms.mk)

PRODUCT_BRAND := Nothing
PRODUCT_DEVICE := asteroids
PRODUCT_MANUFACTURER := Nothing
PRODUCT_MODEL := A059
PRODUCT_NAME := lineage_asteroids

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Asteroids-user 14 UKQ1.250612.001 2608101153 release-keys" \
    BuildFingerprint=Nothing/Asteroids/Asteroids:14/UKQ1.250612.001/2608101153:user/release-keys \
    DeviceName=Asteroids \
    DeviceProduct=Asteroids \
    SystemDevice=Asteroids \
    SystemName=Asteroids

TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
