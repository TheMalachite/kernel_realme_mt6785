obj-$(CONFIG_OPPO_DEVICE_IFNO)  +=  oppo_devinfo/
obj-y += oppo_custom/
obj-y  +=  oppo_criticallog/

#ifdef OPLUS_FEATURE_NFC_CONSOFT
#/* WangYukun@CONNECTIVITY.NFC.BASIC, 2020/03/24, Add for oppo nfc chipset */
obj-$(CONFIG_OPPO_NFC)     +=  oppo_nfc/
#endif /* OPLUS_FEATURE_NFC_CONSOFT */

#ifdef OPLUS_FEATURE_SENSOR_SMEM
obj-$(CONFIG_OPPO_ALS_CALI)   +=  oppo_als_cali_value/
#endif /*OPLUS_FEATURE_SENSOR_SMEM */

#ifdef VENDOR_EDIT
#//WuWeiZhong@BSP.Power.Basic, 2020/06/12, add for wakelock profiler
obj-$(CONFIG_OPPO_WAKELOCK_PROFILER)     +=  oppo_wakelock_profiler/
#endif /* VENDOR_EDIT */
