### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# begin properties
properties() { '
kernel.string=AOSP Kernel for 6.1
do.devicecheck=0
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=
device.name2=
device.name3=
supported.versions=16
supported.patchlevels=
'; } # end properties

# boot image installation
block=boot;
is_slot_device=1;
. tools/ak3-core.sh;
split_boot;
flash_boot;
