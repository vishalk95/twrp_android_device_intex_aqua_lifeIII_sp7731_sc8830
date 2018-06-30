#
# Copyright 2018 vishalk17 <github.com/vishalk17>
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
#

DEVICE_PATH := device/intex/lifeIII

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7

# Platform
TARGET_BOARD_PLATFORM := sc8830

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sp7731gea_hdr
TARGET_NO_BOOTLOADER := true

# Filesystems
TARGET_USERIMAGES_USE_EXT4 := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8 androidboot.selinux=permissive
TARGET_KERNEL_CONFIG := vishalk17_defconfig
TARGET_KERNEL_SOURCE := kernel/intex/aqual_life3
KERNEL_TOOLCHAIN_PREFIX := arm-linux-androidkernel-
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := \
	--kernel_offset 0x00008000 \
	--ramdisk_offset 0x01000000 \
	--tags_offset 0x00000100 \
	--dt $(DEVICE_PATH)/dt.img

#copy prebuilt kernel to its place
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel

ifeq ($(TARGET_BOARD_PLATFORM),sc8830)
PRODUCT_COPY_FILES += $(TARGET_PREBUILT_KERNEL):kernel
endif

# Recovery
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# Partitions
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0/gadget/lun%d/file
TARGET_DISABLE_TRIPLE_BUFFERING := false
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/twrp.fstab

# TWRP Configuration
TW_SCREEN_BLANK_ON_BOOT := true
TW_EXTRA_LANGUAGES := true
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_DEFAULT_BRIGHTNESS := 165
TW_MAX_BRIGHTNESS := 255
#TW_BRIGHTNESS_PATH := /sys/devices/40260000.sprd_pwm_bl/backlight/sprd_backlight/brightness
TW_SCREEN_BLANK_ON_BOOT := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH   := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_EXCLUDE_SUPERSU := true
