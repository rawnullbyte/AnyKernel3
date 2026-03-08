# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=MeowKernel by Meow
do.devicecheck=1
do.modules=0
do.systemless=0
do.cleanup=1
do.cleanuponabort=1
device.name1=lisa
supported.versions=
supported.patchlevels=
'; } # end properties

# shell variables
block=boot;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;
no_block_display=1;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

# write_boot automatically detects 'Image' and 'dtbo.img' in the zip root
# and flashes them to the correct partitions.
ui_print "[#] Installing Kernel and dtbo...";
dump_boot;
write_boot;

ui_print "[+] Thank you for using MeowKernel!";

## end boot install
