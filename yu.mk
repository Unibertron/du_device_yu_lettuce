# Copyright (C) 2016  The YUTeleventures
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

$(call inherit-product, device/yu/lettuce/full_lettuce.mk)

# Inherit some common YUOS stuff.
$(call inherit-product, vendor/yuos/config/common_full_phone.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

PRODUCT_NAME := yu_lettuce
BOARD_VENDOR := yu
PRODUCT_DEVICE := lettuce

PRODUCT_GMS_CLIENTID_BASE := android-micromax

TARGET_VENDOR_PRODUCT_NAME := YUPHORIA
TARGET_VENDOR_DEVICE_NAME := YUPHORIA
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=YUPHORIA PRODUCT_NAME=YUPHORIA

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
	BUILD_FINGERPRINT=YU/YUPHORIA/YUPHORIA:$(PLATFORM_VERSION)/$(BUILD_ID)/MMXMR1:$(TARGET_BUILD_VARIANT)/release-keys \
	PRIVATE_BUILD_DESC="YUPHORIA-user $(PLATFORM_VERSION) $(BUILD_ID) MMXMR1 release-keys"
