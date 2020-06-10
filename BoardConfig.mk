#
# Copyright (C) 2016 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/ngm/E506plus

ANDROID_COMMON_BUILD_MK = true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_LDPRELOAD := libxlog.so

BOARD_HAS_NO_SELECT_BUTTON := true

# BOOTLOADER
TARGET_BOOTLOADER_BOARD_NAME := mt6580

# Flags
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
COMMON_GLOBAL_CFLAGS += -DMTK_HARDWARE -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL -DDISABLE_ASHMEM_TRACKING
COMMON_GLOBAL_CPPFLAGS += -DMTK_HARDWARE

BOARD_USES_MTK_HARDWARE := true

# Kernel
BOARD_KERNEL_CMDLINE += \
	bootopt=64S3,32S1,32S1 \
	androidboot.selinux=disabled
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS  := --kernel_offset 0x00008000 --ramdisk_offset 0x04000000 --tags_offset 0x0e000000 --board WCDMA
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

# Graphics
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/ngm/E506plus/configs/egl.cfg
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true

# Wifi
BOARD_WLAN_DEVICE := mt66xx
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_P2P := P2P

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# TARGET IMAGES
TARGET_USERIMAGES_USE_EXT4 := true

# Malloc
MALLOC_SVELTE := true

# Lights HAL
TARGET_PROVIDES_LIBLIGHT := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true

# RECOVERY
TARGET_RECOVERY_FSTAB := device/ngm/E506plus/root/fstab.mt6580

# PARTITIONS
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1487000000

# Screen
RECOVERY_TOUCHSCREEN_SWAP_XY := true
RECOVERY_TOUCHSCREEN_FLIP_Y := true
# I got headaches finding out the correct variables for the screen. They may be different depending on the device.

# Inherit form vendor
include vendor/ngm/E506plus/BoardConfigVendor.mk
