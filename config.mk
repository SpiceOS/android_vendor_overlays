# Copyright (C) 2017-2020 crDroid Android Project
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
LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

DEVICE_PACKAGE_OVERLAYS += vendor/overlays/overlay/common
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/overlays/overlay/common

ifeq ($(EXTRA_FOD_ANIMATIONS),true)
DEVICE_PACKAGE_OVERLAYS += vendor/overlays/overlay/fod-animations
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/overlays/overlay/fod-animations
endif

ifeq ($(TARGET_HAS_FOD),true)
DEVICE_PACKAGE_OVERLAYS += vendor/overlays/overlay/fod-icons
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/overlays/overlay/fod-icons
endif

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/overlays/prebuilt/fonts,$(TARGET_COPY_OUT_SYSTEM)/fonts)

# Icon shape overlays
PRODUCT_PACKAGES += \
    IconShapeCylinderOverlay \
    IconShapeHexagonOverlay \
    IconShapeFlowerOverlay \
    IconShapePebbleOverlay \
    IconShapeVesselOverlay \
    IconShapeTaperedRectOverlay

# Accents
PRODUCT_PACKAGES += \
    Amber \
    Black \
    Blue \
    BlueGrey \
    Brown \
    Cyan \
    DeepOrange \
    DeepPurple \
    Green \
    Grey \
    Indigo \
    LightBlue \
    LightGreen \
    Lime \
    Orange \
    Pink \
    Purple \
    Red \
    Teal \
    UserOne \
    UserTwo \
    UserThree \
    UserFour \
    UserFive \
    UserSix \
    UserSeven \
    Yellow \
    White

# Brand Accents
PRODUCT_PACKAGES += \
    AospaGreen \
    AndroidOneGreen \
    CocaColaRed \
    DiscordPurple \
    FacebookBlue \
    InstagramCerise \
    JollibeeCrimson \
    MonsterEnergyGreen \
    NextbitMint \
    OneplusRed \
    PepsiBlue \
    PocophoneYellow \
    RazerGreen \
    SamsungBlue \
    SpotifyGreen \
    StarbucksGreen \
    TwitchPurple \
    TwitterBlue \
    XboxGreen \
    XiaomiOrange

# Stub
PRODUCT_PACKAGES += \
    MalluOSThemesStub

# Dark Styles
PRODUCT_PACKAGES += \
    SystemAmoledBlack \
    SystemCharcoalBlack \
    SystemMidnightBlue

# Switch Themes
PRODUCT_PACKAGES += \
    ContainedSwitch \
    MD2Switch \
    NarrowSwitch \
    OnePlusSwitch \
    RetroSwitch \
    StockSwitch \
    TelegramSwitch
