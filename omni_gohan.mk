$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/bq/gohan/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata \
    device/bq/gohan/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := gohan
PRODUCT_NAME := omni_gohan
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris X5 Plus
PRODUCT_MANUFACTURER := bq

PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=Aquaris_X5_Plus PRODUCT_NAME=Aquaris_X5_Plus
