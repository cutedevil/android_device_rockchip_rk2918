#
# Copyright (C) 2012 The CyanogenMod Project
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

LOCAL_PATH := device/rockchip/rk2918

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a8
TARGET_ARCH := arm
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := rk2918
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := RK29board
TARGET_BOARD_INFO_FILE := $(LOCAL_PATH)/board-info.txt

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel

BOARD_CUSTOM_BOOTIMG_MK := $(LOCAL_PATH)/custombootimg.mk
# Init
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/init.rc

#Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
TARGET_USE_CUSTOM_SECOND_LUN_NUM := 1
BOARD_VOLD_MAX_PARTITIONS := 20

#Bluethoot
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_CSR := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR ?= device/rockchip/rk2918/bluetooth


#Touch screen
BOARD_USE_LEGACY_TOUCHSCREEN := true

#HDMI
TARGET_HAVE_HDMI_OUT := true

#Audio
BOARD_USES_GENERIC_AUDIO := false
BOARD_USES_ALSA_AUDIO := true

# Partitons
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 482344960
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1572864000
TARGET_USERIMAGES_USE_EXT4 := true

# Releasetools
#TARGET_RELEASETOOLS_EXTENSIONS := $(LOCAL_PATH)/releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./$(LOCAL_PATH)/releasetools/rk29xx_ota_from_target_files
#TARGET_RELEASETOOL_IMG_FROM_TARGET_SCRIPT := ./$(LOCAL_PATH)/releasetools/rk29xx_img_from_target_files
# Graphics
BOARD_EGL_CFG := $(LOCAL_PATH)/config/egl.cfg
USE_OPENGL_RENDERER := true

#BOARD_USES_HGL := true
USE_OPENGL_RENDERER := true
TARGET_DISABLE_TRIPLE_BUFFERING := true
ENABLE_WEBGL := true

BOARD_NEEDS_MEMORYHEAPPMEM := true

# HWComposer
BOARD_USES_HWCOMPOSER := true

# Camera
USE_CAMERA_STUB := true

#Wlan
BOARD_WLAN_DEVICE := rtl8192cu
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_rtl
#BOARD_HOSTAPD_DRIVER        := WEXT
#BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_rtl
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_FW_PATH_PARAM   := ""
WIFI_DRIVER_FW_PATH_STA     := ""
WIFI_DRIVER_FW_PATH_AP      := ""
WIFI_DRIVER_FW_PATH_P2P     := ""
WIFI_DRIVER_MODULE_NAME     := wlan
WIFI_DRIVER_MODULE_ARG      := ""

TARGET_CUSTOM_WIFI := device/rockchip/rk2918/wifi_realtek.c
# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/rockchip/rk2918/recovery/recovery_keys.c
BOARD_UMS_2ND_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun1/file"
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun0/file"
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

# inherit from the proprietary version
-include vendor/rockchip/rk2918/BoardConfigVendor.mk
