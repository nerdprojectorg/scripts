#!/bin/bash

# Source Devices Trees 4.4
git clone https://github.com/nerdhannn/android_device_asus_sdm660-common -b xdOSS device/asus/sdm660-common
git clone https://github.com/nerdhannn/android_device_asus_X01BD -b xdOSS device/asus/X01BD
git clone https://github.com/nerdhannn/android_kernel_asus_sdm660 -b Eldritch kernel/asus/sdm660
git clone https://github.com/nerdhannn/proprietary_vendor_asus -b xdOSS vendor/asus

# Remove Hals
rm -rf hardware/qcom-caf/msm8998

# 4.4 Hals
git clone https://github.com/LineageOS/android_hardware_qcom_audio -b lineage-19.1-caf-msm8998 hardware/qcom-caf/msm8998/audio
git clone https://github.com/AOSP-X00TD/platform_hardware_qcom_display -b twelve hardware/qcom-caf/msm8998/display
git clone https://github.com/LineageOS/android_hardware_qcom_media -b lineage-19.1-caf-msm8998 hardware/qcom-caf/msm8998/media
git clone https://github.com/LineageOS/android_hardware_qcom_vr -b lineage-19.1 hardware/qcom-caf/vr

# Guard QCOM Snapdragon 660 Hals
cp -af hardware/qcom-caf/common/os_pickup_qssi.bp hardware/qcom-caf/msm8998/Android.bp
cp -af hardware/qcom-caf/common/os_pickup.mk hardware/qcom-caf/msm8998/Android.mk
