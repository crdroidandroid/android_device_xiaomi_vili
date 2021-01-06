#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/vili

# Inherit from sm8350-common
include device/xiaomi/sm8350-common/BoardConfigCommon.mk

# Board
TARGET_BOOTLOADER_BOARD_NAME := vili

# Kernel
TARGET_KERNEL_CONFIG += vendor/vili_QGKI.config

# Kernel modules
BOOT_KERNEL_MODULES := \
  fts_touch_spi.ko \
  hwid.ko \
  msm_drm.ko \
  xiaomi_touch.ko

BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(BOOT_KERNEL_MODULES)

# OTA Assert
TARGET_OTA_ASSERT_DEVICE := vili

# Partitions
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 113254576128

# Vibrator
SOONG_CONFIG_xiaomiSm8350Vars_vibrator_use_effect_stream := true

# Inherit from proprietary files
include vendor/xiaomi/vili/BoardConfigVendor.mk
