# Inherit AOSP device configuration for mako
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit AOKP common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/revolt/configs/gsm.mk)

# Mako Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/mako

# Setup device specific product configuration
PRODUCT_NAME := revolt_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

# FingerPrint
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=occam BUILD_FINGERPRINT=google/occam/mako:4.2/JOP40C/527662:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2 JOP40C 527662 release-keys" BUILD_NUMBER=527662

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi
