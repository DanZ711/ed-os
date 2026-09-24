#!/bin/bash
# Construieste ISO-ul ed-os de la zero
set -e
cd ~/school-os

sudo lb clean
sudo chown -R $USER:$USER .build config 2>/dev/null || true

lb config \
  --distribution trixie \
  --architecture amd64 \
  --binary-images iso-hybrid \
  --apt-recommends false \
  --bootappend-live "boot=live components locales=ro_RO.UTF-8 keyboard-layouts=us,ro keyboard-variants=,std keyboard-options=grp:alt_shift_toggle timezone=Europe/Bucharest"

sudo lb build 2>&1 | tee build.log
ls -lh *.iso
