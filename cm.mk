# Release name
PRODUCT_RELEASE_NAME := E506plus

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/ngm/E506plus/device.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 854

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := E506plus
PRODUCT_NAME := cm_E506plus
PRODUCT_BRAND := NGM
PRODUCT_MODEL := E506plus
PRODUCT_MANUFACTURER := NGM
