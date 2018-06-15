OutFile "ApeTexasEEG_oculus_x64.exe"
RequestExecutionLevel admin
InstallDir "c:\ApertusVR"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show
SetCompress auto

Section -OculusDK2_Runtimes
  SetOutPath "$TEMP\ApeTexasEEG\oculusDK2\oculus_runtime_rev_1_sdk_0.4.4_win.exe"
  File "..\3rdParty\oculusDK2\oculus_runtime_rev_1_sdk_0.4.4_win.exe"
  ExecWait "$TEMP\ApeTexasEEG\oculusDK2\oculus_runtime_rev_1_sdk_0.4.4_win.exe"
  Sleep 1000
SectionEnd

Section -VisualStudio201764bit_Runtimes
  SetOutPath "$TEMP\ApeTexasEEG\VC_redist.x64.exe"
  File "..\3rdParty\VC_redist.x64.exe"
  ExecWait "$TEMP\ApeTexasEEG\VC_redist.x64.exe"
  Sleep 1000
SectionEnd

Section
	#ApeTexasEEG begin
		#build
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\ApeTexasEEG.exe"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\ApeEventManager.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\ApeMainWindow.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\ApeOculusDK2Plugin.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\ApeOgreRenderPlugin.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\ApePluginManager.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\ApeScene.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\ApeSkyWaterTerrainScenePlugin.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\ApeSystem.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\ApeSystemConfig.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\ApeTexasEEGPlugin.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\Hydrax.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\OgreHLMS.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\OgreMain.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\OgreMeshLodGenerator.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\OgreOverlay.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\OgreProcedural.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\OgreRTShaderSystem.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\Plugin_CgProgramManager.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\cg.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\RenderSystem_Direct3D11.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\RenderSystem_Direct3D9.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\RenderSystem_GL.dll"
		SetOutPath $INSTDIR\build\bin\release
		File "$%APERTUSVR_BUILD%\bin\release\Skyx.dll"
		
		SetOutPath $INSTDIR\samples\texasEEG\configs
		File /r /x "CMakeLists.txt" "$%APERTUSVR_SOURCE%\samples\texasEEG\configs\"
		SetOutPath $INSTDIR\plugins\ogreRender\media
		File /r "$%APERTUSVR_SOURCE%\plugins\ogreRender\media\" 
		SetOutPath $INSTDIR\plugins\oculusDK2\resources
		File /r "$%APERTUSVR_SOURCE%\plugins\oculusDK2\resources\" 		
	#ApeTexasEEG end
		
	#shortcut to ApeTexasEEG.exe
	CreateDirectory "$DESKTOP\ApeTexasEEG"
	CreateShortCut "$DESKTOP\ApeTexasEEG\ApeTexasEEG_Monitor.lnk" "$INSTDIR\build\bin\release\ApeTexasEEG.exe" "monitor"
	CreateShortCut "$DESKTOP\ApeTexasEEG\ApeTexasEEG_OculusDK2.lnk" "$INSTDIR\build\bin\release\ApeTexasEEG.exe" "oculusDK2"
	
SectionEnd