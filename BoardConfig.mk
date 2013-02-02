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

BOARD_HAVE_BLUETOOTH := true
TARGET_NO_BOOTLOADER := true
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyFIQ0 androidboot.console=ttyFIQ0 init=/init initrd=0x62000000,0x00120000 mtdparts=rk29xxnand:0x00002000@0x00002000(misc),0x00004000@0x00004000(kernel),0x00008000@0x00008000(boot),0x00008000@0x00010000(recovery),0x000C0000@0x00018000(backup),0x00040000@0x000D8000(cache),0x00300000@0x00118000(userdata),0x00002000@0x00418000(kpanic),0x00100000@0x0041A000(system),-@0x0053A000(user) 
#1.16 firmware_ver=4.0.4
#Partitions

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_SYSTEMIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 419430400
TARGET_USERIMAGES_USE_EXT4 := true
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 16777216
BOARD_USERDATAIMAGE_PARTITION_SIZE := 536870912
BOARD_FLASH_BLOCK_SIZE := 16384
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := false

COMMON_GLOBAL_CFLAGS += -DUSES_AUDIO_LEGACY

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := rockchip
TARGET_BOOTLOADER_BOARD_NAME := rk29board

#BOARD_USES_AUDIO_LEGACY := true
#BOARD_USES_GENERIC_AUDIO := false
TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_ALSA_AUDIO := true
BOARD_WITH_ALSA_UTILS := true

TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_RECOVERY_INITRC := $(LOCAL_PATH)/recovery/init.rc


# Releasetools
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/rockchip/rk2918/releasetools/rockchip_ota_from_target_files
# Graphics
BOARD_EGL_CFG := $(LOCAL_PATH)/config/egl.cfg
USE_OPENGL_RENDERER := true

#BOARD_USES_HGL := true
USE_OPENGL_RENDERER := true
TARGET_DISABLE_TRIPLE_BUFFERING := true
ENABLE_WEBGL := true

BOARD_NEEDS_MEMORYHEAPPMEM := true

TARGET_CUSTOM_BLUEDROID := ../../..//device/rockchip/rk2918/bluethoot/bluedroid.c

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
BOARD_CUSTOM_RECOVERY_EVENTS := ../../../$(LOCAL_PATH)/recovery/events.c
TARGET_RECOVERY_PRE_COMMAND := "echo -n boot-recovery | busybox dd of=/dev/block/mtdblock0 count=1 conv=sync; sync"
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

BOARD_CUSTOM_BOOTIMG_MK := device/rockchip/rk2918/custombootimg.mk
TARGET_PROVIDES_INIT_RC := false
#TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

# inherit from the proprietary version
-include vendor/rockchip/rk2918/BoardConfigVendor.mk
