# invoke SourceDir generated makefile for simple_peripheral_app.pem4f
simple_peripheral_app.pem4f: .libraries,simple_peripheral_app.pem4f
.libraries,simple_peripheral_app.pem4f: package/cfg/simple_peripheral_app_pem4f.xdl
	$(MAKE) -f C:\Users\Nolas\OneDrive\Desktop\UNLV\FALL20~4\CPE403\ASSIGN~1\NOT-GI~1\AS32BB~1\Code\simple_peripheral_CC13X2R1_LAUNCHXL_tirtos_ccs/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\Nolas\OneDrive\Desktop\UNLV\FALL20~4\CPE403\ASSIGN~1\NOT-GI~1\AS32BB~1\Code\simple_peripheral_CC13X2R1_LAUNCHXL_tirtos_ccs/src/makefile.libs clean

