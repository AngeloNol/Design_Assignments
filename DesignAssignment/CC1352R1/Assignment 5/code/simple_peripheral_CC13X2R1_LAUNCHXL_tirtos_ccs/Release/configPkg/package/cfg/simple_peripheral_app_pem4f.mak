#
#  Do not edit this file.  This file is generated from 
#  package.bld.  Any modifications to this file will be 
#  overwritten whenever makefiles are re-generated.
#
#  target compatibility key = ti.targets.arm.elf.M4F{1,0,20.2,7
#
ifeq (,$(MK_NOGENDEPS))
-include package/cfg/simple_peripheral_app_pem4f.oem4f.dep
package/cfg/simple_peripheral_app_pem4f.oem4f.dep: ;
endif

package/cfg/simple_peripheral_app_pem4f.oem4f: | .interfaces
package/cfg/simple_peripheral_app_pem4f.oem4f: package/cfg/simple_peripheral_app_pem4f.c package/cfg/simple_peripheral_app_pem4f.mak 
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c  -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 5/Code/simple_peripheral_CC13X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 5/Code/simple_peripheral_CC13X2R1_LAUNCHXL_tirtos_ccs/Release" --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 5/Code/simple_peripheral_CC13X2R1_LAUNCHXL_tirtos_ccs/Application" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/npi/src" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/npi/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/common/cc26xx/rcosc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/profiles/dev_info" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/profiles/simple_profile" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/common/nv" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/common/cc26xx" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/posix/ccs" --include_path="C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include" --define=DeviceFamily_CC13X2 --define=FLASH_ROM_BUILD --define=NVOCMP_NWSAMEITEM=1 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi   -qq -pdsw225 -ms --fp_mode=strict --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/simple_peripheral_app_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_7 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg -fc $<
	$(MKDEP) -a $@.dep -p package/cfg -s oem4f $< -C   -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 5/Code/simple_peripheral_CC13X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 5/Code/simple_peripheral_CC13X2R1_LAUNCHXL_tirtos_ccs/Release" --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 5/Code/simple_peripheral_CC13X2R1_LAUNCHXL_tirtos_ccs/Application" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/npi/src" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/npi/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/common/cc26xx/rcosc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/profiles/dev_info" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/profiles/simple_profile" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/common/nv" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/common/cc26xx" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/posix/ccs" --include_path="C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include" --define=DeviceFamily_CC13X2 --define=FLASH_ROM_BUILD --define=NVOCMP_NWSAMEITEM=1 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi   -qq -pdsw225 -ms --fp_mode=strict --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/simple_peripheral_app_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_7 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/simple_peripheral_app_pem4f.oem4f: export C_DIR=
package/cfg/simple_peripheral_app_pem4f.oem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)
package/cfg/simple_peripheral_app_pem4f.oem4f: Path:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)

package/cfg/simple_peripheral_app_pem4f.sem4f: | .interfaces
package/cfg/simple_peripheral_app_pem4f.sem4f: package/cfg/simple_peripheral_app_pem4f.c package/cfg/simple_peripheral_app_pem4f.mak
	@$(RM) $@.dep
	$(RM) $@
	@$(MSG) clem4f -n $< ...
	$(ti.targets.arm.elf.M4F.rootDir)/bin/armcl -c -n -s --symdebug:none -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 5/Code/simple_peripheral_CC13X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 5/Code/simple_peripheral_CC13X2R1_LAUNCHXL_tirtos_ccs/Release" --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 5/Code/simple_peripheral_CC13X2R1_LAUNCHXL_tirtos_ccs/Application" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/npi/src" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/npi/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/common/cc26xx/rcosc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/profiles/dev_info" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/profiles/simple_profile" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/common/nv" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/common/cc26xx" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/posix/ccs" --include_path="C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include" --define=DeviceFamily_CC13X2 --define=FLASH_ROM_BUILD --define=NVOCMP_NWSAMEITEM=1 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi   -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/simple_peripheral_app_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_7 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg -fc $<
	$(MKDEP) -a $@.dep -p package/cfg -s oem4f $< -C  -n -s --symdebug:none -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 5/Code/simple_peripheral_CC13X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 5/Code/simple_peripheral_CC13X2R1_LAUNCHXL_tirtos_ccs/Release" --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 5/Code/simple_peripheral_CC13X2R1_LAUNCHXL_tirtos_ccs/Application" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/npi/src" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/npi/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/common/cc26xx/rcosc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/profiles/dev_info" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/profiles/simple_profile" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/common/nv" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/common/cc26xx" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/posix/ccs" --include_path="C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include" --define=DeviceFamily_CC13X2 --define=FLASH_ROM_BUILD --define=NVOCMP_NWSAMEITEM=1 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi   -qq -pdsw225 --endian=little -mv7M4 --abi=eabi --float_support=fpv4spd16 -eo.oem4f -ea.sem4f   -Dxdc_cfg__xheader__='"configPkg/package/cfg/simple_peripheral_app_pem4f.h"'  -Dxdc_target_name__=M4F -Dxdc_target_types__=ti/targets/arm/elf/std.h -Dxdc_bld__profile_release -Dxdc_bld__vers_1_0_20_2_7 -O2  $(XDCINCS) -I$(ti.targets.arm.elf.M4F.rootDir)/include  -fs=./package/cfg -fr=./package/cfg
	-@$(FIXDEP) $@.dep $@.dep
	
package/cfg/simple_peripheral_app_pem4f.sem4f: export C_DIR=
package/cfg/simple_peripheral_app_pem4f.sem4f: PATH:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)
package/cfg/simple_peripheral_app_pem4f.sem4f: Path:=$(ti.targets.arm.elf.M4F.rootDir)/bin/;$(PATH)

clean,em4f ::
	-$(RM) package/cfg/simple_peripheral_app_pem4f.oem4f
	-$(RM) package/cfg/simple_peripheral_app_pem4f.sem4f

simple_peripheral_app.pem4f: package/cfg/simple_peripheral_app_pem4f.oem4f package/cfg/simple_peripheral_app_pem4f.mak

clean::
	-$(RM) package/cfg/simple_peripheral_app_pem4f.mak
