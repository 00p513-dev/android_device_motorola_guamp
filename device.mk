# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
#$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

DEVICE_PATH := device/motorola/guamp
BOARD_BUILD_PRODUCT_IMAGE := false
BOARD_BUILD_VENDOR_IMAGE := false
BOARD_SYSTEMSDK_VERSIONS := 29
PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_TARGET_VNDK_VERSION := 30
PRODUCT_USE_DYNAMIC_PARTITIONS := true
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 720

# $(call inherit-product-if-exists, vendor/motorola/guamp/guamp-vendor.mk)

PRODUCT_HOST_PACKAGES += \
    libbluetooth
    
PRODUCT_COPY_FILES += \
$(DEVICE_PATH)/rootdir/system/lib/libbluetooth.so:system/lib/libbluetooth.so \
$(DEVICE_PATH)/rootdir/system/lib/libbluetooth_qti.so:system/lib/libbluetooth_qti.so \
$(DEVICE_PATH)/rootdir/system/etc/apns-conf.xml:system/etc/apns-conf.xml
