OutFile "ApeTexasEEG.exe"
RequestExecutionLevel admin
InstallDir "c:/ApertusVR"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show
SetCompress auto

Section -OculusDK2_Runtimes
  SetOutPath "$TEMP\ApertusVR\oculusDK2\oculus_runtime_rev_1_sdk_0.4.4_win.exe"
  File "..\3rdParty\oculusDK2\oculus_runtime_rev_1_sdk_0.4.4_win.exe"
  ExecWait "$TEMP\ApertusVR\oculusDK2\oculus_runtime_rev_1_sdk_0.4.4_win.exe"
  Sleep 1000
SectionEnd

Section
	#ApeTexasEEG begin
		#build
		SetOutPath $INSTDIR\build\bin\release\ApeTexasEEG.exe
		File "$%APERTUSVR_SOURCE%\build\bin\release\ApeTexasEEG.exe"
		SetOutPath $INSTDIR\build\bin\release\ApeEventManager.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\ApeEventManager.dll"
		SetOutPath $INSTDIR\build\bin\release\ApeMainWindow.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\ApeMainWindow.dll"
		SetOutPath $INSTDIR\build\bin\release\ApeOculusDK2Plugin.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\ApeOculusDK2Plugin.dll"
		SetOutPath $INSTDIR\build\bin\release\ApeOgreRenderPlugin.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\ApeOgreRenderPlugin.dll"
		SetOutPath $INSTDIR\build\bin\release\ApePluginManager.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\ApePluginManager.dll"
		SetOutPath $INSTDIR\build\bin\release\ApeScene.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\ApeScene.dll"
		SetOutPath $INSTDIR\build\bin\release\ApeSkyWaterTerrainScenePlugin.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\ApeSkyWaterTerrainScenePlugin.dll"
		SetOutPath $INSTDIR\build\bin\release\ApeSystem.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\ApeSystem.dll"
		SetOutPath $INSTDIR\build\bin\release\ApeSystemConfig.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\ApeSystemConfig.dll"
		SetOutPath $INSTDIR\build\bin\release\ApeTexasEEGPlugin.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\ApeTexasEEGPlugin.dll"
		SetOutPath $INSTDIR\build\bin\release\Hydrax.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\Hydrax.dll"
		SetOutPath $INSTDIR\build\bin\release\OgreHLMS.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\OgreHLMS.dll"
		SetOutPath $INSTDIR\build\bin\release\OgreMain.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\OgreMain.dll"
		SetOutPath $INSTDIR\build\bin\release\OgreMeshLodGenerator.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\OgreMeshLodGenerator.dll"
		SetOutPath $INSTDIR\build\bin\release\OgreOverlay.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\OgreOverlay.dll"
		SetOutPath $INSTDIR\build\bin\release\OgreProcedural.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\OgreProcedural.dll"
		SetOutPath $INSTDIR\build\bin\release\OgreRTShaderSystem.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\OgreRTShaderSystem.dll"
		SetOutPath $INSTDIR\build\bin\release\Plugin_CgProgramManager.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\Plugin_CgProgramManager.dll"
		SetOutPath $INSTDIR\build\bin\release\RenderSystem_Direct3D11.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\RenderSystem_Direct3D11.dll"
		SetOutPath $INSTDIR\build\bin\release\RenderSystem_Direct3D9.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\RenderSystem_Direct3D9.dll"
		SetOutPath $INSTDIR\build\bin\release\RenderSystem_GL.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\RenderSystem_GL.dll"
		SetOutPath $INSTDIR\build\bin\release\Skyx.dll
		File "$%APERTUSVR_SOURCE%\build\bin\release\Skyx.dll"
		SetOutPath $INSTDIR\samples\texasEEG\configs
		File /r /x "CMakeLists.txt" "$%APERTUSVR_SOURCE%\samples\texasEEG\configs" 
	#ApeTexasEEG end
		
	#shortcut to ApeTexasEEG.exe
	CreateDirectory "$DESKTOP\ApeTexasEEG"
	CreateShortCut "$DESKTOP\ApeTexasEEG\ApeTexasEEG_Monitor.lnk" "$INSTDIR\build\bin\release\ApeTexasEEG.exe" "monitor"
	CreateShortCut "$DESKTOP\ApeTexasEEG\ApeTexasEEG_OculusDK2.lnk" "$INSTDIR\build\bin\release\ApeTexasEEG.exe" "oculusDK2"
	
SectionEnd