OutFile "ApertusVR_SDK_VS2015_64.exe"
InstallDir "$PROGRAMFILES\ApertusVR\0.1\SDK"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show
SetCompress auto

Section
	SetOutPath $INSTDIR\common
	File /r /x "CMakeLists.txt" "$%APERTUSVR_SOURCE%\common\" 
	SetOutPath $INSTDIR\core
	File /r /x "CMakeLists.txt" "$%APERTUSVR_SOURCE%\core\" 
	SetOutPath $INSTDIR\plugins
	File /r /x "CMakeLists.txt" "$%APERTUSVR_SOURCE%\plugins\" 
	SetOutPath $INSTDIR\samples
	File /r /x "CMakeLists.txt" "$%APERTUSVR_SOURCE%\samples\" 
	SetOutPath $INSTDIR\servers
	File /r /x "CMakeLists.txt" "$%APERTUSVR_SOURCE%\servers\" 
SectionEnd