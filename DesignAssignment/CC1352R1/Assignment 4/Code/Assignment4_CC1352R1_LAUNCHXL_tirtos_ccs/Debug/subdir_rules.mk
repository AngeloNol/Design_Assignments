################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O3 --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 4/Code/Assignment4_CC1352R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 4/Code/Assignment4_CC1352R1_LAUNCHXL_tirtos_ccs/Debug" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/posix/ccs" --include_path="C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include" --define=DeviceFamily_CC13X2 -g --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 4/Code/Assignment4_CC1352R1_LAUNCHXL_tirtos_ccs/Debug/syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

build-2031807631:
	@$(MAKE) --no-print-directory -Onone -f subdir_rules.mk build-2031807631-inproc

build-2031807631-inproc: ../AS4.cfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: XDCtools'
	"C:/ti/xdctools_3_62_01_15_core/xs" --xdcpath="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source;C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/kernel/tirtos/packages;" xdc.tools.configuro -o configPkg -t ti.targets.arm.elf.M4F -p ti.platforms.simplelink:CC13X2_CC26X2 -r release -c "C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS" --compileOptions "-mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O3 --include_path=\"C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 4/Code/Assignment4_CC1352R1_LAUNCHXL_tirtos_ccs\" --include_path=\"C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 4/Code/Assignment4_CC1352R1_LAUNCHXL_tirtos_ccs/Debug\" --include_path=\"C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source\" --include_path=\"C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/posix/ccs\" --include_path=\"C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include\" --define=DeviceFamily_CC13X2 -g --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on  " "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

configPkg/linker.cmd: build-2031807631 ../AS4.cfg
configPkg/compiler.opt: build-2031807631
configPkg/: build-2031807631

build-2028445151: ../AS4.syscfg
	@echo 'Building file: "$<"'
	@echo 'Invoking: SysConfig'
	"C:/ti/sysconfig_1_10_0/sysconfig_cli.bat" -s "C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/.metadata/product.json" --script "C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 4/Code/Assignment4_CC1352R1_LAUNCHXL_tirtos_ccs/AS4.syscfg" -o "syscfg" --compiler ccs
	@echo 'Finished building: "$<"'
	@echo ' '

syscfg/ti_devices_config.c: build-2028445151 ../AS4.syscfg
syscfg/ti_drivers_config.c: build-2028445151
syscfg/ti_drivers_config.h: build-2028445151
syscfg/ti_utils_build_linker.cmd.genlibs: build-2028445151
syscfg/syscfg_c.rov.xs: build-2028445151
syscfg/ti_utils_runtime_model.gv: build-2028445151
syscfg/ti_utils_runtime_Makefile: build-2028445151
syscfg/: build-2028445151

syscfg/%.obj: ./syscfg/%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: Arm Compiler'
	"C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O3 --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 4/Code/Assignment4_CC1352R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 4/Code/Assignment4_CC1352R1_LAUNCHXL_tirtos_ccs/Debug" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source" --include_path="C:/ti/simplelink_cc13xx_cc26xx_sdk_5_30_01_01/source/ti/posix/ccs" --include_path="C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-arm_20.2.7.LTS/include" --define=DeviceFamily_CC13X2 -g --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --preproc_with_compile --preproc_dependency="syscfg/$(basename $(<F)).d_raw" --include_path="C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 4/Code/Assignment4_CC1352R1_LAUNCHXL_tirtos_ccs/Debug/syscfg" --obj_directory="syscfg" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


