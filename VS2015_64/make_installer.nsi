OutFile "ApertusVR_SDK_VS2015_64.exe"
InstallDir "$PROGRAMFILES\ApertusVR\0.1\SDK"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show
SetCompress auto

Section
    SetOutPath $INSTDIR\3rdParty\ogre
	File /r /x "CMakeCache.txt" /x "CMakeLists.txt" /x "*.log" /x "*.cmake" /x "CMakeFiles" "$%APERTUSVR_SOURCE%\3rdParty\ogre\" 
	
	SetOutPath $INSTDIR\build
	File /x "CMakeCache.txt" /x "CMakeLists.txt" /x "*.cmake" /x "*.sou" /x "*.db" /x "*.sdf" "$%APERTUSVR_SOURCE%\build\" 
	SetOutPath $INSTDIR\build\bin
	File /r "$%APERTUSVR_SOURCE%\build\bin\" 
	SetOutPath $INSTDIR\build\common
	File /r /x "CMakeCache.txt" /x "CMakeLists.txt" /x "*.log" /x "*.cmake" /x "CMakeFiles" "$%APERTUSVR_SOURCE%\build\common\" 
	SetOutPath $INSTDIR\build\core
	File /r /x "CMakeCache.txt" /x "CMakeLists.txt" /x "*.log" /x "*.cmake" /x "CMakeFiles" "$%APERTUSVR_SOURCE%\build\core\" 
	SetOutPath $INSTDIR\build\plugins
	File /r /x "CMakeCache.txt" /x "CMakeLists.txt" /x "*.log" /x "*.cmake" /x "CMakeFiles" "$%APERTUSVR_SOURCE%\build\plugins\" 
	SetOutPath $INSTDIR\build\samples
	File /r /x "CMakeCache.txt" /x "CMakeLists.txt" /x "*.log" /x "*.cmake" /x "CMakeFiles" "$%APERTUSVR_SOURCE%\build\samples\" 
	SetOutPath $INSTDIR\build\servers
	File /r /x "CMakeCache.txt" /x "CMakeLists.txt" /x "*.log" /x "*.cmake" /x "CMakeFiles" "$%APERTUSVR_SOURCE%\build\servers\" 
	
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