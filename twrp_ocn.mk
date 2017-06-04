# Time Zone data for Recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Copy kernel module for exfat
    recovery/root/system/lib/modules/texfat.ko:recovery/root/system/lib/modules/texfat.ko

$(call inherit-product, device/htc/ocn/aosp_ocn.mk)
$(call inherit-product-if-exists, device/htc/ocn/omni_ocn.mk)

PRODUCT_NAME := twrp_ocn
PRODUCT_DEVICE := ocn
PRODUCT_BRAND := htc
PRODUCT_MODEL := HTC Ocean
PRODUCT_MANUFACTURER := HTC
