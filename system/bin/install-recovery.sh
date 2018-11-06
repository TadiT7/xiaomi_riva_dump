#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:39525710:f9e4a3f4dcd9c74471e3a5231ff45298edcfb2b6; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:35325258:0fbe445256e426a93253afad8c778c144454d03f EMMC:/dev/block/bootdevice/by-name/recovery f9e4a3f4dcd9c74471e3a5231ff45298edcfb2b6 39525710 0fbe445256e426a93253afad8c778c144454d03f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
