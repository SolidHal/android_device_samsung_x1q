# Inherit common board flags
include device/samsung/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/x1q

# Platform
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Assert
TARGET_OTA_ASSERT_DEVICE := x1q

# Kernel
TARGET_KERNEL_CONFIG := vendor/x1q_usa_singlex_lineage_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 640

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# inherit from the proprietary version
include vendor/samsung/sm8250-common/BoardConfigVendor.mk
