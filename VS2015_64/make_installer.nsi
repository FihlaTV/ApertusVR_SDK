OutFile "ApertusVR_SDK.exe"
InstallDir "$PROGRAMFILES\ApertusVR\0.1\SDK"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show
SetCompress auto

Section
	File /nonfatal "$%APERTUSVR_SOURCE%\README.md"
SectionEnd