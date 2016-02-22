# Release name
PRODUCT_RELEASE_NAME := tblte

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/tblte/device.mk)

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/fstab.qcom:recovery/root/fstab.qcom

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tblte
PRODUCT_NAME := cm_tblte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := tblte
PRODUCT_MANUFACTURER := samsung
