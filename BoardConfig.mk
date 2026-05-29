#
# Copyright (C) 2021-2025 The StaticOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Partitions
BOARD_SUPER_PARTITION_SIZE := 13883146240
BOARD_SUPER_PARTITION_PARTITION_LIST := system system_ext product vendor vendor_dlkm odm

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8650-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/lexus

# Assert
TARGET_OTA_ASSERT_DEVICE := lexus,OP6131L1

# Display
TARGET_SCREEN_DENSITY := 560

# Kernel
TARGET_KERNEL_ADDITIONAL_FLAGS += CONFIG_LEXUS_DTB=y

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Include the proprietary files BoardConfig.
include vendor/oneplus/lexus/BoardConfigVendor.mk
