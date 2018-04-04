# Copyright 2018 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/flamingo/overlay

# Device etc
PRODUCT_COPY_FILES := \
    device/sony/flamingo/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    device/sony/flamingo/rootdir/system/etc/thermal-engine-8226.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine-8226.conf \
    device/sony/flamingo/rootdir/system/etc/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf \
    device/sony/flamingo/rootdir/system/etc/libnfc-brcm.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-brcm.conf \
    device/sony/flamingo/rootdir/system/etc/libnfc-nxp.conf:$(TARGET_COPY_OUT_VENDOR)/etc/libnfc-nxp.conf \
    device/sony/flamingo/rootdir/system/etc/wifimactool.sh:$(TARGET_COPY_OUT_VENDOR)/etc/wifimactool.sh \
    device/sony/flamingo/twrp.fstab:recovery/root/etc/twrp.fstab

# Sensors
PRODUCT_COPY_FILES += \
    device/sony/flamingo/rootdir/system/etc/_hals.conf:$(TARGET_COPY_OUT_VENDOR)/vendor/etc/sensors/_hals.conf

 PRODUCT_PACKAGES += \
    sensors.msm8226

# IDC
PRODUCT_COPY_FILES += \
    device/sony/flamingo/rootdir/system/usr/idc/elan-touchscreen.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/elan-touchscreen.idc

# Device Specific Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml

PRODUCT_PACKAGES += \
    keystore.msm8226

# Device Init
PRODUCT_PACKAGES += \
    fstab.flamingo \
    init.recovery.flamingo \
    init.flamingo \
    ueventd.flamingo

# Lights
PRODUCT_PACKAGES += \
    lights.flamingo

# Simple PowerHAL
PRODUCT_PACKAGES += \
    power.flamingo

# Camera shim packages
PRODUCT_PACKAGES += \
    libshim_camera \
    libatomic_camera

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREBUILT_DPI := hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=240 \
    ro.usb.pid_suffix=1BC

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/yukon/platform.mk)
$(call inherit-product, vendor/sony/flamingo/flamingo-vendor.mk)
