# Copyright (C), 2008-2030, OPPO Mobile Comm Corp., Ltd
### COLOROS_EDIT, All rights reserved.
###
### File: - OplusKernelEnvConfig.mk
### Description:
###     you can get the oplus feature variables set in android side in this file
###     this file will add global macro for common oplus added feature
###     BSP team can do customzation by referring the feature variables
### Version: 1.0
### Date: 2020-03-18
### Author: Liang.Sun
###
### ------------------------------- Revision History: ----------------------------
### <author>                        <date>       <version>   <desc>
### ------------------------------------------------------------------------------
### Liang.Sun@TECH.Build              2020-03-18   1.0         Create this moudle
##################################################################################

-include ./oplus_native_features.mk

OPLUS_CONNECTIVITY_NATIVE_FEATURE_SET :=

ifeq ($(OPLUS_FEATURE_WIFI_MTUDETECT), yes)
OPLUS_CONNECTIVITY_NATIVE_FEATURE_SET += OPLUS_FEATURE_WIFI_MTUDETECT
endif

ifeq ($(OPLUS_FEATURE_WIFI_LIMMITBGSPEED), yes)
OPLUS_CONNECTIVITY_NATIVE_FEATURE_SET += OPLUS_FEATURE_WIFI_LIMMITBGSPEED
endif


$(foreach myfeature,$(OPLUS_CONNECTIVITY_NATIVE_FEATURE_SET),\
    $( \
        $(eval KBUILD_CFLAGS += -D$(myfeature)) \
        $(eval KBUILD_CPPFLAGS += -D$(myfeature)) \
        $(eval CFLAGS_KERNEL += -D$(myfeature)) \
        $(eval CFLAGS_MODULE += -D$(myfeature)) \
    ) \
)

ALLOWED_MCROS := OPLUS_FEATURE_HANS_FREEZE \
OPLUS_FEATURE_ONSCREENFINGERPRINT \
OPLUS_FEATURE_SENSOR \
OPLUS_FEATURE_SENSOR_ALGORITHM \
OPLUS_FEATURE_SPEAKER_MUTE \
OPLUS_FEATURE_TP_BASIC \
OPLUS_FEATURE_CHG_BASIC \
OPLUS_FEATURE_WIFI_LIMMITBGSPEED \
OPLUS_FEATURE_WIFI_MTUDETECT \
OPLUS_FEATURE_WIFI_RUSUPGRADE \
OPLUS_FEATURE_WIFI_SLA \
OPLUS_FEATURE_WIFI_SMART_BW \
OPLUS_FEATURE_STORAGE_TOOL \
OPLUS_BUG_COMPATIBILITY \
OPLUS_BUG_STABILITY \
OPLUS_ARCH_EXTENDS \
VENDOR_EDIT \
OPLUS_FEATURE_POWERINFO_STANDBY \
OPLUS_FEATURE_CAMERA_COMMON \
OPLUS_FEATURE_APP_MONITOR \
OPLUS_FEATURE_HDR10PLUS_CETIFICATION

$(foreach myfeature,$(ALLOWED_MCROS),\
         $(eval KBUILD_CFLAGS += -D$(myfeature)) \
         $(eval KBUILD_CPPFLAGS += -D$(myfeature)) \
         $(eval CFLAGS_KERNEL += -D$(myfeature)) \
         $(eval CFLAGS_MODULE += -D$(myfeature)) \
)



# BSP team can do customzation by referring the feature variables
#Zhijun.Ye@MM.Display.LCD.Machine, 2020/09/23, add for multibits backlight
ifeq ($(OPLUS_FEATURE_MULTIBITS_BL),yes)
KBUILD_CFLAGS += -DOPLUS_FEATURE_MULTIBITS_BL
KBUILD_CPPFLAGS += -DOPLUS_FEATURE_MULTIBITS_BL
CFLAGS_KERNEL += -DOPLUS_FEATURE_MULTIBITS_BL
CFLAGS_MODULE += -DOPLUS_FEATURE_MULTIBITS_BL
endif
