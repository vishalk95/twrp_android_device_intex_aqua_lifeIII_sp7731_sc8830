# Folder path
DEVICE_PATH := device/intex/lifeIII

# Ramdisk
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/init.recovery.sc8830.rc:root/init.recovery.sc8830.rc \
    $(DEVICE_PATH)/rootdir/ueventd.sc8830.rc:root/ueventd.sc8830.rc

# Stock Modules
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/lib/modules/autotst.ko:root/lib/modules/autotst.ko \
    $(DEVICE_PATH)/rootdir/lib/modules/gator.ko:root/lib/modules/gator.ko \
    $(DEVICE_PATH)/rootdir/lib/modules/mmc_test.ko:root/lib/modules/mmc_test.ko \
    $(DEVICE_PATH)/rootdir/lib/modules/sprdwl.ko:root/lib/modules/sprdwl.ko \
    $(DEVICE_PATH)/rootdir/lib/modules/trout_fm.ko:root/lib/modules/trout_fm.ko
