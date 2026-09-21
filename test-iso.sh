#!/bin/bash
qemu-system-x86_64 \
  -enable-kvm \
  -m 2048 \
  -smp 2 \
  -cdrom live-image-amd64.hybrid.iso \
  -vga virtio \
  -usb -device usb-tablet \
  -display gtk,grab-on-hover=on
