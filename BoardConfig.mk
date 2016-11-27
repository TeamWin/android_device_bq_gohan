# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

# Board
TARGET_BOARD_PLATFORM := msm8952
TARGET_BOOTLOADER_BOARD_NAME := msm8952
TARGET_NO_BOOTLOADER := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Kernel
TARGET_PREBUILT_KERNEL := device/bq/gohan/kernel
TARGET_CUSTOM_KERNEL_HEADERS := device/bq/gohan/include
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file

# TWRP-Specific
TARGET_RECOVERY_FSTAB := device/bq/gohan/recovery/etc/twrp.fstab
TARGET_RECOVERY_QCOM_RTC_FIX := true
RECOVERY_SDCARD_ON_DATA := true
TW_THEME := portrait_hdpi
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_CRYPTO := true
TW_TARGET_USES_QCOM_BSP := true
TW_NEW_ION_HEAP := true
TW_DEFAULT_BRIGHTNESS := 128
