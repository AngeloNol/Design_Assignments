## THIS IS A GENERATED FILE -- DO NOT EDIT
.configuro: .libraries,em4f linker.cmd package/cfg/AS3_pem4f.oem4f

# To simplify configuro usage in makefiles:
#     o create a generic linker command file name 
#     o set modification times of compiler.opt* files to be greater than
#       or equal to the generated config header
#
linker.cmd: package/cfg/AS3_pem4f.xdl
	$(SED) 's"^\"\(package/cfg/AS3_pem4fcfg.cmd\)\"$""\"C:/Users/Nolas/OneDrive/Desktop/UNLV/fall 2022/CPE403/Assignments/not-github/Assignment 3/Code/Assignment_3/.config/xconfig_AS3/\1\""' package/cfg/AS3_pem4f.xdl > $@
	-$(SETDATE) -r:max package/cfg/AS3_pem4f.h compiler.opt compiler.opt.defs
