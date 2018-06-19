!include 'DirectSetup.nsh'

Name "ApertusVR"
OutFile "ApertusVR_TexasEEG_desktop_x86.exe"
RequestExecutionLevel admin
InstallDir "c:\ApertusVR"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show
SetCompress auto

# Set the text to prompt user to enter a directory
DirText "This will install ApertusVR on your computer. Choose a directory"

# Pages
Page components
Page directory
Page instfiles

SectionGroup /e "SDKs / Runtimes"

	Section /o "DirectX 9 Redist"
	  SetOutPath "$TEMP\ApertusVR\directx_Jun2010_redist"
	  File /r "..\3rdParty\directx_Jun2010_redist\"
	  ${DirectX_Install} "$TEMP\ApertusVR\directx_Jun2010_redist"
	  Sleep 1000
	SectionEnd

	Section /o "Visual Studio 2017 x86 Redist"
	  SetOutPath "$TEMP\ApeTexasEEG\VC_redist.x86.exe"
	  File "..\3rdParty\VC_redist.x86.exe"
	  ExecWait "$TEMP\ApeTexasEEG\VC_redist.x86.exe"
	  Sleep 1000
	SectionEnd

	Section /o "Visual Studio 2017 x64 Redist"
	  SetOutPath "$TEMP\ApeTexasEEG\VC_redist.x64.exe"
	  File "..\3rdParty\VC_redist.x64.exe"
	  ExecWait "$TEMP\ApeTexasEEG\VC_redist.x64.exe"
	  Sleep 1000
	SectionEnd

	Section /o "OculusDK2 SDK 0.4.4"
		SetOutPath "$TEMP\ApeTexasEEG\oculusDK2\oculus_runtime_rev_1_sdk_0.4.4_win.exe"
		File "..\3rdParty\oculusDK2\oculus_runtime_rev_1_sdk_0.4.4_win.exe"
		ExecWait "$TEMP\ApeTexasEEG\oculusDK2\oculus_runtime_rev_1_sdk_0.4.4_win.exe"
		Sleep 1000

		SetOutPath $INSTDIR\plugins\oculusDK2\resources
		File /r "$%APERTUSVR_SOURCE%\plugins\oculusDK2\resources\"
	SectionEnd

SectionGroupEnd

Section "ApertusCore"
	SetOutPath $INSTDIR\build\bin\release

	# core
	File "$%APERTUSVR_BUILD%\bin\release\ApeEventManager.dll"
	File "$%APERTUSVR_BUILD%\bin\release\ApeLogManager.dll"
	File "$%APERTUSVR_BUILD%\bin\release\ApePluginManager.dll"
	File "$%APERTUSVR_BUILD%\bin\release\ApeMainWindow.dll"
	File "$%APERTUSVR_BUILD%\bin\release\ApeScene.dll"
	File "$%APERTUSVR_BUILD%\bin\release\ApeSystem.dll"
	File "$%APERTUSVR_BUILD%\bin\release\ApeSystemConfig.dll"
	File "$%APERTUSVR_BUILD%\bin\release\libcurl.dll"
SectionEnd

SectionGroup /e "ApertusPlugins"

	Section "OgreRender"
		SetOutPath $INSTDIR\build\bin\release

		# plugins - Ogre
		File "$%APERTUSVR_BUILD%\bin\release\Hydrax.dll"
		File "$%APERTUSVR_BUILD%\bin\release\Skyx.dll"
		File "$%APERTUSVR_BUILD%\bin\release\OgreHLMS.dll"
		File "$%APERTUSVR_BUILD%\bin\release\OgreMain.dll"
		File "$%APERTUSVR_BUILD%\bin\release\OgreMeshLodGenerator.dll"
		File "$%APERTUSVR_BUILD%\bin\release\OgreOverlay.dll"
		File "$%APERTUSVR_BUILD%\bin\release\OgreProcedural.dll"
		File "$%APERTUSVR_BUILD%\bin\release\OgreRTShaderSystem.dll"
		File "$%APERTUSVR_BUILD%\bin\release\Plugin_CgProgramManager.dll"
		File "$%APERTUSVR_BUILD%\bin\release\cg.dll"
		File "$%APERTUSVR_BUILD%\bin\release\RenderSystem_Direct3D11.dll"
		File "$%APERTUSVR_BUILD%\bin\release\RenderSystem_Direct3D9.dll"
		File "$%APERTUSVR_BUILD%\bin\release\RenderSystem_GL.dll"

		# plugins - APE
		File "$%APERTUSVR_BUILD%\bin\release\ApeOgreRenderPlugin.dll"
		File "$%APERTUSVR_BUILD%\bin\release\ApeSkyWaterTerrainScenePlugin.dll"

		# configs and resources
		SetOutPath $INSTDIR\plugins\ogreRender\media
		File /r "$%APERTUSVR_SOURCE%\plugins\ogreRender\media\"
	SectionEnd

	Section "OisUserInput"
		SetOutPath $INSTDIR\build\bin\release

		# plugins - APE
		File "$%APERTUSVR_BUILD%\bin\release\ApeOisUserInputPlugin.dll"
	SectionEnd

	Section "TexasEEG"
		SetOutPath $INSTDIR\build\bin\release

		# plugins - APE
		File "$%APERTUSVR_BUILD%\bin\release\ApeTexasEEGPlugin.dll"

		# executable
		File "$%APERTUSVR_BUILD%\bin\release\ApeTexasEEG.exe"

		# configs and resources
		SetOutPath $INSTDIR\samples\texasEEG\configs
		File /r /x "CMakeLists.txt" "$%APERTUSVR_SOURCE%\samples\texasEEG\configs\"

		# shortcut to ApeTexasEEG.exe
		CreateDirectory "$DESKTOP\ApeTexasEEG"
		CreateShortCut "$DESKTOP\ApeTexasEEG\ApeTexasEEG_Monitor.lnk" "$INSTDIR\build\bin\release\ApeTexasEEG.exe" "monitor"
		CreateShortCut "$DESKTOP\ApeTexasEEG\ApeTexasEEG_OculusDK2.lnk" "$INSTDIR\build\bin\release\ApeTexasEEG.exe" "oculusDK2"
	SectionEnd

SectionGroupEnd
