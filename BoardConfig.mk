# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include device/sony/yukon/PlatformConfig.mk

TARGET_SPECIFIC_HEADER_PATH += device/sony/flamingo/include

TARGET_RECOVERY_FSTAB = device/sony/flamingo/rootdir/fstab.flamingo

TARGET_BOOTLOADER_BOARD_NAME := D2203

BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1782579200
#Reserve space for data encryption (1879030784-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1879014400

BOARD_KERNEL_CMDLINE += androidboot.hardware=flamingo

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/sony/flamingo/releasetools

# TWRP Only Available for FOTA / Recovery Build, not for ROM Build
RECOVERY_VARIANT := twrp
TARGET_USERIMAGES_USE_F2FS := true
TW_THEM := portrait_hdpi
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
RECOVERY_SDCARD_ON_DATA := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_NTFS_3G := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_INCLUDE_CRYPTO := true
