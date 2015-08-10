$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_LOCALES += en_US

# Inherit from
$(call inherit-product, device/huawei/petl10/device_petl10.mk)

## Device identifier. This must come after all inclusions

PRODUCT_NAME := full_petl10
PRODUCT_DEVICE := petl10
PRODUCT_BRAND := huawei
PRODUCT_MODEL := PE-TL10
PRODUCT_MANUFACTURER := HUAWEI



