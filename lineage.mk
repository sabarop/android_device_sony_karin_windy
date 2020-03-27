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

# Inherit some common CM stuff
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := lineage_karin_windy

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=karin_windy
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="karin_windy-user 8.1.0 OPM7-181205-001 1 test-keys"
BUILD_FINGERPRINT := Sony/karin_windy/karin_windy:8.1.0/OPM7.181205.001/1:user/test-keys
