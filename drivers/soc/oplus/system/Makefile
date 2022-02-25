# SPDX-License-Identifier: GPL-2.0-only
# Copyright (C) 2018-2020 Oplus. All rights reserved.
#
# Makefile for the OPLUS Linux Kernel system team specific device drivers.
#

obj-y 	+= platform.o
obj-$(CONFIG_OPLUS_FEATURE_SHUTDOWN_DETECT)    += shutdown_detect/
obj-$(CONFIG_OPLUS_FEATURE_OPROJECT) 	+= oplus_project/
obj-$(CONFIG_OPLUS_FEATURE_HUNG_TASK_ENHANCE) += hung_task_enhance/
obj-$(CONFIG_OPLUS_FEATURE_PHOENIX)     += oppo_phoenix/

#ifdef OPLUS_FEATURE_ACM
#Yuwei.Guan@BSP.Kernel.FS,2020/07/08, Add for acm
obj-$(CONFIG_OPLUS_FEATURE_ACM)     += acm/
#endif /* OPLUS_FEATURE_ACM */
#ifdef OPLUS_FEATURE_SELINUX_CONTROL_LOG
#Shuangquan.Du@ANDROID.SELINUX, 2018/01/13, Add for disable selinux denied logs in MP version
obj-$(CONFIG_SECURITY_SELINUX) += selinux/
#endif /* OPLUS_FEATURE_SELINUX_CONTROL_LOG */
