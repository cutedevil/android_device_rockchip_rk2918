# Inherit device configuration for ROCKCHIP
$(call inherit-product, device/tct/T10/full_T10.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_T10
PRODUCT_BRAND := tct
PRODUCT_DEVICE := T10
PRODUCT_MODEL := T10
PRODUCT_MANUFACTURER := tct

