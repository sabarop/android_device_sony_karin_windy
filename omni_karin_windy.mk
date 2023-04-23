#
# Copyright (C) 2015 The CyanogenMod Project
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
#

$(call inherit-product, device/sony/karin_windy/full_karin_windy.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/omni/config/common_tablet.mk)

PRODUCT_NAME := omni_karin_windy

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=karin \
  BUILD_FINGERPRINT=Sony/karin/karin:7.1.1/N-MR1-KITAKAMI-170920-0229/1:user/dev-keys \
  PRIVATE_BUILD_DESC="karin-user 7.1.1 N-MR1-KITAKAMI-170920-0229 1 dev-keys"

# Inherit TWRP requirements
$(call inherit-product, device/sony/karin_windy/twrp.mk)
