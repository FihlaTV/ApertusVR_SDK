OutFile "ApertusVR_SDK_VS2015_64.exe"
InstallDir "$PROGRAMFILES\ApertusVR\0.1\SDK"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show
SetCompress auto

Section
	SetOutPath $INSTDIR
	File "$%APERTUSVR_SOURCE%\README.md"
SectionEnd