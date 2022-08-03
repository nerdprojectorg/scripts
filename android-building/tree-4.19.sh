#!/bin/bash

# Source Devices Trees 4.19
git clone https://github.com/nerdhannn/android_device_asus_sdm660-common -b twelve-4.19 device/asus/sdm660-common
git clone https://github.com/nerdhannn/android_device_asus_X01BD -b xdOSS-4.19 device/asus/X01BD # with adapt commit for xdOSS ROM
git clone https://github.com/nerdhannn/android_kernel_asus_sdm660 -b twelve-4.19 kernel/asus/sdm660
git clone https://github.com/nerdhannn/proprietary_vendor_asus -b twelve-4.19 vendor/asus

# Remove Hals
rm -rf hardware/qcom-caf/sdm660
rm -rf hardware/google/pixel

# 4.19 Hals
git clone https://github.com/Nerdhannn/android_hardware_google_pixel hardware/google/pixel
git clone https://github.com/Atom-X-Devs/android_hardware_qcom-caf_sdm660_audio -b sdm660-12 hardware/qcom-caf/sdm660/audio
git clone https://github.com/Atom-X-Devs/android_hardware_qcom-caf_sdm660_display -b sdm660-12 hardware/qcom-caf/sdm660/display
git clone https://github.com/Atom-X-Devs/android_hardware_qcom-caf_sdm660_media -b sdm660-12 hardware/qcom-caf/sdm660/media
git clone https://github.com/LineageOS/android_hardware_qcom_vr -b lineage-19.1 hardware/qcom-caf/vr

# Guard QCOM Snapdragon 660 Hals
cp -af hardware/qcom-caf/common/os_pickup_qssi.bp hardware/qcom-caf/sdm660/Android.bp
cp -af hardware/qcom-caf/common/os_pickup.mk hardware/qcom-caf/sdm660/Android.mk
