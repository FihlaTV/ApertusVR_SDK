!include "DirectSetup.nsh"

OutFile "ApertusVR_SDK_VS2015_64.exe"
InstallDir "$PROGRAMFILES\ApertusVR\0.1\SDK"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show
SetCompress auto


Section -Directx_Runtimes
  SetOutPath "$TEMP\ApertusVR\directx_Jun2010_redist"
  File /r "..\3rdParty\directx_Jun2010_redist\"
  ${DirectX_Install} "$TEMP\ApertusVR\directx_Jun2010_redist"
  Sleep 1000
SectionEnd

Section
    
    #3rdParties begin
		#raknet
		SetOutPath $INSTDIR\3rdParty\raknet\Source
		File "$%APERTUSVR_SOURCE%\3rdParty\raknet\Source\" 
		SetOutPath $INSTDIR\3rdParty\raknet\Lib\LibStatic
		File /r "$%APERTUSVR_SOURCE%\3rdParty\raknet\Lib\LibStatic\" 
		
		#curl
		SetOutPath $INSTDIR\3rdParty\curl\include\curl
		File "$%APERTUSVR_SOURCE%\3rdParty\curl\include\curl\" 
		SetOutPath $INSTDIR\3rdParty\curl\lib
		File /r "$%APERTUSVR_SOURCE%\3rdParty\curl\lib\" 
		
		#rapidjson
		SetOutPath $INSTDIR\3rdParty\rapidjson\include\rapidjson
		File /r "$%APERTUSVR_SOURCE%\3rdParty\rapidjson\include\rapidjson\" 	
		
		#ogre
		SetOutPath $INSTDIR\3rdParty\ogre\include
		File "$%APERTUSVR_SOURCE%\3rdParty\ogre\include\" 	
		SetOutPath $INSTDIR\3rdParty\ogre\OgreMain\include
		File "$%APERTUSVR_SOURCE%\3rdParty\ogre\OgreMain\include\" 
		SetOutPath $INSTDIR\3rdParty\ogre\OgreMain\include\Threading
		File "$%APERTUSVR_SOURCE%\3rdParty\ogre\OgreMain\include\Threading\"
		SetOutPath $INSTDIR\3rdParty\ogre\OgreMain\include\WIN32
		File "$%APERTUSVR_SOURCE%\3rdParty\ogre\OgreMain\include\WIN32\" 
		SetOutPath $INSTDIR\3rdParty\ogre\OgreMain\include\Hash
		File "$%APERTUSVR_SOURCE%\3rdParty\ogre\OgreMain\include\Hash\" 		
		SetOutPath $INSTDIR\3rdParty\ogre\OgreMain
		File "$%APERTUSVR_SOURCE%\3rdParty\ogre\OgreMain\" 
		SetOutPath $INSTDIR\3rdParty\ogre\Components\Overlay\include
		File "$%APERTUSVR_SOURCE%\3rdParty\ogre\Components\Overlay\include\" 
		SetOutPath $INSTDIR\3rdParty\ogre\Components\HLMS\include
		File "$%APERTUSVR_SOURCE%\3rdParty\ogre\Components\HLMS\include\" 
		SetOutPath $INSTDIR\3rdParty\ogre\Components\MeshLodGenerator\include
		File "$%APERTUSVR_SOURCE%\3rdParty\ogre\Components\MeshLodGenerator\include\" 
		SetOutPath $INSTDIR\3rdParty\ogre\PlugIns\ParticleFX\include
		File "$%APERTUSVR_SOURCE%\3rdParty\ogre\PlugIns\ParticleFX\include\" 
		SetOutPath $INSTDIR\3rdParty\ogre\RenderSystems\Direct3D9\include
		File "$%APERTUSVR_SOURCE%\3rdParty\ogre\RenderSystems\Direct3D9\include\" 
		SetOutPath $INSTDIR\3rdParty\ogre\RenderSystems\Direct3D11\include
		File "$%APERTUSVR_SOURCE%\3rdParty\ogre\RenderSystems\Direct3D11\include\" 
		SetOutPath $INSTDIR\3rdParty\ogre\RenderSystems\GL\include
		File "$%APERTUSVR_SOURCE%\3rdParty\ogre\RenderSystems\GL\include\" 
		SetOutPath $INSTDIR\3rdParty\ogre\Components\RTShaderSystem\include
		File "$%APERTUSVR_SOURCE%\3rdParty\ogre\Components\RTShaderSystem\include\" 
		SetOutPath $INSTDIR\3rdParty\ogre\lib
		File /r "$%APERTUSVR_SOURCE%\3rdParty\ogre\lib\" 
		
		#ogre_procedural
		SetOutPath $INSTDIR\3rdParty\ogre_procedural\SDK\include\OgreProcedural
		File "$%APERTUSVR_SOURCE%\3rdParty\ogre_procedural\SDK\include\OgreProcedural\" 
		SetOutPath $INSTDIR\3rdParty\ogre_procedural\lib
		File /r "$%APERTUSVR_SOURCE%\3rdParty\ogre_procedural\lib\" 
		
		#ois
		SetOutPath $INSTDIR\3rdParty\ois\includes
		File "$%APERTUSVR_SOURCE%\3rdParty\ois\includes\" 
		SetOutPath $INSTDIR\3rdParty\ois\Debug
		File /r "$%APERTUSVR_SOURCE%\3rdParty\ois\Debug\" 
		SetOutPath $INSTDIR\3rdParty\ois\Release
		File /r "$%APERTUSVR_SOURCE%\3rdParty\ois\Release\" 
		
		#nodejs
		SetOutPath $INSTDIR\3rdParty\nodejs\6.10.0\source\src
		File "$%APERTUSVR_SOURCE%\3rdParty\nodejs\6.10.0\source\src\" 
		SetOutPath $INSTDIR\3rdParty\nodejs\6.10.0\source\deps\uv\include
		File "$%APERTUSVR_SOURCE%\3rdParty\nodejs\6.10.0\source\deps\uv\include\" 
		SetOutPath $INSTDIR\3rdParty\nodejs\6.10.0\source\deps\v8\include
		File "$%APERTUSVR_SOURCE%\3rdParty\nodejs\6.10.0\source\deps\v8\include\" 
		SetOutPath $INSTDIR\3rdParty\nodejs\6.10.0\source\Debug
		File "$%APERTUSVR_SOURCE%\3rdParty\nodejs\6.10.0\source\Debug\node.lib" 
		SetOutPath $INSTDIR\3rdParty\nodejs\6.10.0\source\Release
		File "$%APERTUSVR_SOURCE%\3rdParty\nodejs\6.10.0\source\Release\node.lib"

		#nan
		SetOutPath $INSTDIR\3rdParty\nan
		File "$%APERTUSVR_SOURCE%\3rdParty\nan\" 
		
		#nbind
		SetOutPath $INSTDIR\3rdParty\nbind\include\nbind
		File /r "$%APERTUSVR_SOURCE%\3rdParty\nbind\include\nbind\"
        SetOutPath $INSTDIR\3rdParty\nbind\src
		File /r "$%APERTUSVR_SOURCE%\3rdParty\nbind\src\" 		
	#3rdParties end

	#ApertusVR begin
		#build
		SetOutPath $INSTDIR\build
		File "$%APERTUSVR_SOURCE%\build\ApertusVR.sln" 
		SetOutPath $INSTDIR\build\bin
		File /r /x "Ape*.*" /x "*.pdb" /x "*.ilk" /x "SuperChargerLinkage.x3d" "$%APERTUSVR_SOURCE%\build\bin\" 
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
		
		#source
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
	#ApertusVR end
	
	#stringReplacer@vcxproj
	SetOutPath $INSTDIR
	File "stringReplacer@vcxproj.bat"
	File "stringReplacer@vcxproj.ps1"
	Exec "$INSTDIR\stringReplacer@vcxproj.bat"
	#Delete "$INSTDIR\stringReplacer@vcxproj.bat"
	#Delete "$INSTDIR\stringReplacer@vcxproj.ps1"
	
SectionEnd