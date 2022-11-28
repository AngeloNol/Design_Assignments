#
_XDCBUILDCOUNT = 
ifneq (,$(findstring path,$(_USEXDCENV_)))
override XDCPATH = C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source;C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages;C:/Users/Nolas/OneDrive/Desktop/UNLV/FALL20~4/CPE403/ASSIGN~1/NOT-GI~1/AS8CB6~1/Code/Assignment4_CC1352R1_LAUNCHXL_tirtos_ccs/.config
override XDCROOT = C:/ti/xdctools_3_62_01_15_core
override XDCBUILDCFG = ./config.bld
endif
ifneq (,$(findstring args,$(_USEXDCENV_)))
override XDCARGS = 
override XDCTARGETS = 
endif
#
ifeq (0,1)
PKGPATH = C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source;C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages;C:/Users/Nolas/OneDrive/Desktop/UNLV/FALL20~4/CPE403/ASSIGN~1/NOT-GI~1/AS8CB6~1/Code/Assignment4_CC1352R1_LAUNCHXL_tirtos_ccs/.config;C:/ti/xdctools_3_62_01_15_core/packages;..
HOSTOS = Windows
endif
