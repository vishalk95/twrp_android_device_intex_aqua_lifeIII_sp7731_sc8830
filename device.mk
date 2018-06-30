# Folder path
DEVICE_PATH := device/intex/lifeIII

# Ramdisk
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/init.recovery.sc8830.rc:root/init.recovery.sc8830.rc \
    $(DEVICE_PATH)/rootdir/ueventd.sc8830.rc:root/ueventd.sc8830.rc
