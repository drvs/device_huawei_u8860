# Product specific compile-time definitions

LOCAL_PATH := $(call my-dir)

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DTARGET7x30 -DTARGET_MSM7x30 -DREFRESH_RATE=60

# Kernel
# TARGET_KERNEL_SOURCE := kernel/huawei/u8860
# TARGET_KERNEL_CONFIG := cyanogenmod_u8860_defconfig
TARGET_PREBUILT_KERNEL := device/huawei/u8860/prebuilt/kernel
# TARGET_SPECIFIC_HEADER_PATH += device/huawei/u8860/include

TARGET_BOOTANIMATION_PRELOAD := true

USE_CAMERA_STUB := false
BOARD_USES_GENERIC_AUDIO := true

# inherit from the proprietary version
-include vendor/huawei/u8860/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a8
# ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := false
# TARGET_CPU_VARIANT := scorpion
TARGET_CPU_VARIANT := generic
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := u8860
TARGET_OTA_ASSERT_DEVICE := u8860,U8860,honor,Honor

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Looks like kernel base is recalculated by mkbootimg
# 0x00208000 resulted in 0x00210000 and left images unbootable
# 0x00200000 results in 0x00208000 and that is what we want

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=huawei androidboot.emmc=true
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

BOARD_HAS_DOWNLOAD_MODE := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true

# Graphics
TARGET_HARDWARE_3D := false
USE_OPENGL_RENDERER := true
BOARD_USES_ADRENO_200 := true
# TARGET_USES_C2D_COMPOSITION := true
TARGET_HAVE_BYPASS := false
# TARGET_QCOM_HDMI_OUT := true
TARGET_GRALLOC_USES_ASHMEM := true
# TARGET_USES_OVERLAY := true
TARGET_USES_GENLOCK := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_USES_QCNE := true
TARGET_USES_SF_BYPASS := false
WEBCORE_INPAGE_VIDEO := true
TARGET_HAVE_TSLIB := true
# DYNAMIC_SHARED_LIBV8SO := true
ENABLE_WEBGL := true

# WLAN config
BOARD_WLAN_DEVICE := bcm4329
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
WIFI_DRIVER_MODULE_PATH := "/system/wifi/dhd.ko"
WIFI_DRIVER_MODULE_NAME := "dhd"
WIFI_DRIVER_MODULE_ARG := ""
WIFI_DRIVER_FW_PATH_STA := "/system/wifi/firmware.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/wifi/firmware_apsta.bin"

# FM radio
BOARD_HAVE_FM_RADIO := true
# BOARD_FM_DEVICE := bcm4329
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# GPS config
BOARD_VENDOR_QCOM_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x30
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Bluetooth config
BOARD_HAVE_BLUETOOTH := true
# BOARD_HAVE_BLUETOOTH_BCM := true

# Filesystem config
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
# BOARD_BOOT_DEVICE := /dev/block/mmcblk0p1
# BOARD_RECOVERY_DEVICE := /dev/block/mmcblk0p1
# BOARD_BOOT_DEVICE := /.cust_backup/image/boot.img
# BOARD_RECOVERY_DEVICE := /.cust_backup/image/recovery.img
BOARD_DATA_DEVICE := /dev/block/mmcblk0p13
BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p12
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p6
BOARD_CACHE_FILESYSTEM := ext4
# BOARD_HAS_NO_MISC_PARTITION := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p14
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p1

# Fix this up by examining fdisk /dev/block/mmcblk0 on a running device
# BOARD_BOOTIMAGE_PARTITION_SIZE     := 5242880
BOARD_BOOTIMAGE_PARTITION_SIZE     := 7864320
# BOARD_RECOVERYIMAGE_PARTITION_SIZE := 7864320
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 545259520
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1447034880
BOARD_CACHEIMAGE_PARTITION_SIZE    := 104857600
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_USES_MMCUTILS := true

TARGET_RECOVERY_INITRC := device/huawei/u8860/recovery/recovery.rc
TARGET_RECOVERY_FSTAB := device/huawei/u8860/configuration/fstab.u8860

TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/huawei/u8860/releasetools/ota_from_target_files

# All the defines for /bootable/recovery (2012-07-24)
#
# BOARD_TOUCH_RECOVERY := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
#
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun0/file"
# BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/huawei/u8860/recovery/u8860_recovery_ui.c
# BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/u8860/recovery/graphics.c
# BOARD_RECOVERY_RFS_CHECK :=
#
# BOARD_RECOVERY_ALWAYS_WIPES := true
# BOARD_RECOVERY_HANDLES_MOUNT := true
# BOARD_USES_BML_OVER_MTD := true
# BOARD_BML_BOOT := true
# BOARD_BML_RECOVERY := true
# BOARD_CUSTOM_GRAPHICS :=
# BOARD_RECOVERY_RFS_CHECK :=
# TARGET_RECOVERY_PIXEL_FORMAT := ("RGBX_8888" | "BGRA_8888")

# SELinux

BOARD_SEPOLICY_DIRS := \
	device/huawei/u8860/sepolicy

BOARD_SEPOLICY_UNION := \
        file_contexts \
        genfs_contexts \
        app.te \
        btmacreader.te \
        device.te \
        drmserver.te \
        init_shell.te \
        file.te \
        rild.te \
        sensors_config.te \
        shell.te \
        surfaceflinger.te \
        system.te \
        zygote.te
