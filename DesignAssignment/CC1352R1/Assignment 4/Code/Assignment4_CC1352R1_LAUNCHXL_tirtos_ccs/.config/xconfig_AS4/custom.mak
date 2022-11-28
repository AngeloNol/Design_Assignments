## THIS IS A GENERATED FILE -- DO NOT EDIT
.configuro: .libraries,em4f linker.cmd package/cfg/AS4_pem4f.oem4f

# To simplify configuro usage in makefiles:
#     o create a generic linker command file name 
#     o set modification times of compiler.opt* files to be greater than
#       or equal to the generated config header
#
linker.cmd: package/cfg/AS4_pem4f.xdl
	$(SED) 's"^\"\(package/cfg/AS4_pem4fcfg.cmd\)\"$""\"C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 4/Code/Assignment4_CC1352R1_LAUNCHXL_tirtos_ccs/.config/xconfig_AS4/\1\""' package/cfg/AS4_pem4f.xdl > $@
	-$(SETDATE) -r:max package/cfg/AS4_pem4f.h compiler.opt compiler.opt.defs
