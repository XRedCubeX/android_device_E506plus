# Release name
PRODUCT_RELEASE_NAME := K960

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/jrdchz/K960/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := K960
PRODUCT_NAME := cm_K960
PRODUCT_BRAND := google
PRODUCT_MODEL := K960
PRODUCT_MANUFACTURER := jrdchz
