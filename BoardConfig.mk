#
# Copyright (C) 2012 The Android Open-Source Project
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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Use the non-open-source parts, if they're present
-include vendor/rockchip/rk2918/BoardConfigVendor.mk

BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB := true

BOARD_USES_HC_RADIO := true

TARGET_NO_BOOTLOADER := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a8
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := rk29sdk
TARGET_BOOTLOADER_BOARD_NAME := rk29board
TARGET_PROVIDES_INIT_RC := true

BOARD_EGL_CFG := device/rockchip/rk2918/egl.cfg
USE_OPENGL_RENDERER := true
ENABLE_WEBGL := true
BOARD_USES_HWCOMPOSER := false
BOARD_USE_SKIA_LCDTEXT := true
BOARD_NO_ALLOW_DEQUEUE_CURRENT_BUFFER := true

TARGET_USES_ION := true

# For WebKit rendering issue	
TARGET_FORCE_CPU_UPLOAD := true

#recovery
TARGET_RECOVERY_INITRC := device/rockchip/pascal2/recovery_init.rc
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/rockchip/pascal2/recovery_keys.c
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"
BOARD_NO_RGBX_8888 := true
BOARD_UMS_2ND_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PRE_COMMAND := "busybox dd if=/misc.img of=/dev/block/mtd/by-name/misc; sync"

#Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_VOLD_MAX_PARTITIONS := 20

# Releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/rockchip/rk2918/releasetools/pascal2_ota_from_target_files
TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./device/rockchip/rk2918/releasetools/pascal2_img_from_target_files
TARGET_CUSTOM_RELEASETOOL := ./device/rockchip/rk2918/releasetools/squisher

#Wlan
BOARD_WLAN_DEVICE := rtl8192cu

WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_FW_PATH_PARAM   := ""
WIFI_DRIVER_FW_PATH_STA     := ""
WIFI_DRIVER_FW_PATH_AP      := ""
WIFI_DRIVER_FW_PATH_P2P     := ""
WIFI_DRIVER_MODULE_NAME     := "wlan"
WIFI_DRIVER_MODULE_ARG      := ""

# Partitions 
BOARD_BOOTIMAGE_PARTITION_SIZE := 8936582
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 9388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 339738624
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2013200384
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

TARGET_PREBUILT_KERNEL := device/rockchip/rk2918/kernel

TARGET_BOOTANIMATION_PRELOAD := true

BOARD_USE_LEGACY_TOUCHSCREEN := true

COMMON_GLOBAL_CFLAGS += -DSURFACEFLINGER_FORCE_SCREEN_RELEASE -DNO_RGBX_8888

#Bluethoot
BOARD_HAVE_BLUETOOTH :=true
