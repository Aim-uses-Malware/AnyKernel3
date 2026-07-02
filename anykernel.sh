### AnyKernel3 Ramdisk Mod Script
## for Xiaomi SPES (sm8250)

properties() { '
kernel.string=SPES Kernel by AimRite2
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=spes
device.name2=
supported.versions=
supported.patchlevels=
'; }

boot_attributes() {
set_perm_recursive 0 0 755 644 $RAMDISK/*;
set_perm_recursive 0 0 750 750 $RAMDISK/init* $RAMDISK/sbin;
} # end attributes

BLOCK=/dev/block/bootdevice/by-name/boot;
IS_SLOT_DEVICE=1;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

. tools/ak3-core.sh;

dump_boot;
write_boot;
