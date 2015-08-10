#Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15

TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mtune=cortex-a15 -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mtune=cortex-a15 -mfloat-abi=softfp
TARGET_EXTRA_CFLAGS := -mtune=cortex-a15 -mcpu=cortex-a15

BOARD_VENDOR := huawei
BOARD_VENDOR_PLATFORM := hi3630
TARGET_BOOTLOADER_BOARD_NAME := hi3630
TARGET_BOARD_PLATFORM := hi3630
TARGET_SOC := kirin925

# Init
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true

# Kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/huawei/petl10/kernel
BOARD_KERNEL_CMDLINE  := 'ro.boot.hardware=hi3630 vmalloc=384M mem=2044m@0x200000 psci=enable mmcparts=mmcblk0:p1(vrl),p2(vrl_backup),p7(modemnvm_factory),p18(splash),p22(dfx),p23(modemnvm_backup),p24(modemnvm_img),p25(modemnvm_system),p26(modem),p27(modem_dsp),p28(modem_om),p29(modemnvm_update),p31(3rdmodem),p32(3rdmodemnvm),p33(3rdmodemnvmbkp) androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_BASE     := 0x00000000
BOARD_KERNEL_OFFSET   := 0x00608000
BOARD_RAMDISK_OFFSET  := 0x04000000
BOARD_SECOND_OFFSET   := 0x00f00000
BOARD_TAGS_OFFSET     := 0x00200000

BOARD_MKBOOTIMG_ARGS += --kernel_offset "$(BOARD_KERNEL_OFFSET)"
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset "$(BOARD_RAMDISK_OFFSET)"
BOARD_MKBOOTIMG_ARGS += --second_offset "$(BOARD_SECOND_OFFSET)"
BOARD_MKBOOTIMG_ARGS += --tags_offset "$(BOARD_TAGS_OFFSET)"

# Filesystem
BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128
BOARD_BOOTIMAGE_PARTITION_SIZE := 10057728
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1610612736
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12635340800
BOARD_FLASH_BLOCK_SIZE := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 131072

# USB mass storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

#TWRP
TARGET_RECOVERY_FSTAB := device/huawei/petl10/recovery/etc/twrp.fstab
HAVE_SELINUX := true
TW_HAS_MTP := true
TW_ALWAYS_RMRF := true
TW_NO_CPU_TEMP := false
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
RECOVERY_SDCARD_ON_DATA := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INTERNAL_STORAGE_PATH := "/data/share/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_CUSTOM_BATTERY_PATH := "/sys/class/power_supply/Battery"
TW_BRIGHTNESS_PATH := "/sys/devices/platform/hisi_fb.1048577/leds/lcd_backlight0/brightness"
BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/petl10/recovery/graphics.c
TW_BOARD_CUSTOM_GRAPHICS  := ../../../device/huawei/petl10/recovery/graphics-twrp.c
