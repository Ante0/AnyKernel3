### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# begin properties
properties() { '
kernel.string=Sultan Kernel for the Pixel 7 series (7, Pro, 7A)
do.devicecheck=0
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=
device.name2=
device.name3=
supported.versions=17
supported.patchlevels=
'; } # end properties

# boot image installation
block=boot;
is_slot_device=1;
. tools/ak3-core.sh;
split_boot;
flash_boot;
rm -f "$AKHOME/Image.lz4"; # failsafe 
rm -f "$home/Image.lz4" # failsafe
#https://github.com/WildKernels/Sultan_KernelSU_SUSFS/issues/39

# vendor_kernel_boot installation (for dtb)
block=vendor_kernel_boot;
is_slot_device=1;
reset_ak;
split_boot;
flash_boot;
