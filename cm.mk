# Release name
PRODUCT_RELEASE_NAME := tblte

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/tblte/device.mk)

LOCAL_PATH := device/samsung/tblte

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/twrp.fstab:recovery/root/etc/twrp.fstab \
    $(LOCAL_PATH)/fstab.qcom:recovery/root/fstab.qcom \
    $(LOCAL_PATH)/init.target.rc:recovery/root/init.target.rc \
    $(LOCAL_PATH)/init.qcom.rc:recovery/root/init.qcom.rc \
    $(LOCAL_PATH)/init.qcom.usb.rc:recovery/root/init.qcom.usb.rc \
    $(LOCAL_PATH)/init.qcom.usb.sh:recovery/root/init.qcom.usb.sh
    
# Charger
PRODUCT_PACKAGES += \
    charger_res_images

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tblte
PRODUCT_NAME := cm_tblte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := tblte
PRODUCT_MANUFACTURER := samsung
