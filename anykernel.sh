### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

properties() { '
kernel.string=MeowKernel by meowrah
do.devicecheck=1
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=0
device.name1=lisa
supported.versions=15 - 16
'; }

## boot shell variables
BLOCK=boot;
IS_SLOT_DEVICE=1;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# import functions/variables
. tools/ak3-core.sh;

## boot install
# We use split/flash to swap the Image without touching the ramdisk
split_boot;
flash_boot;

# uncomment if you have a custom dtbo.img in the zip root
# flash_dtbo;
