# Inherit common device configuration
$(call inherit-product, device/samsung/sm8250-common/common.mk)

# Proprietary blobs
$(call inherit-product-if-exists, vendor/samsung/x1q/x1q-vendor.mk)

### DALVIK
$(call inherit-product, frameworks/native/build/phone-xhdpi-6144-dalvik-heap.mk)

DEVICE_PATH := device/samsung/x1q

# Soong Namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Overlays
PRODUCT_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay
PRODUCT_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay-lineage
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += $(DEVICE_PATH)/overlay-lineage/lineage-sdk

# Resolution
TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

