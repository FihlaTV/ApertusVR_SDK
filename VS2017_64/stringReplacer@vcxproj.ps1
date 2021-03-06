function Replace-TextInFile
{
    Param(
        [string]$FilePath,
        [string]$Pattern,
        [string]$Replacement
    )

    [System.IO.File]::WriteAllText(
        $FilePath,
        ([System.IO.File]::ReadAllText($FilePath) -replace $Pattern, $Replacement)
    )
}

Get-ChildItem . *.vcxproj -rec | ForEach-Object { 
    Replace-TextInFile -FilePath $_.FullName -Pattern 'c:\\github\\ApertusVR' -Replacement $pwd 
}

Get-ChildItem . *.vcxproj -rec | ForEach-Object { 
    Replace-TextInFile -FilePath $_.FullName -Pattern 'c:/github/ApertusVR' -Replacement $pwd.Path.replace( '\', '/') 
}

Get-ChildItem . config.json -rec | ForEach-Object { 
    Replace-TextInFile -FilePath $_.FullName -Pattern 'c:/github/ApertusVR' -Replacement $pwd.Path.replace( '\', '/') 
}

Get-ChildItem . paths.json -rec | ForEach-Object { 
    Replace-TextInFile -FilePath $_.FullName -Pattern 'c:/github/ApertusVR' -Replacement $pwd.Path.replace( '\', '/') 
}

Get-ChildItem . *.vcxproj -rec | ForEach-Object { 
    Replace-TextInFile -FilePath $_.FullName -Pattern '<Message' -Replacement '<!--<Message' 
}

Get-ChildItem . *.vcxproj -rec | ForEach-Object { 
    Replace-TextInFile -FilePath $_.FullName -Pattern '<Command' -Replacement '<!--<Command' 
}

Get-ChildItem . *.vcxproj -rec | ForEach-Object { 
    Replace-TextInFile -FilePath $_.FullName -Pattern '/Message>' -Replacement '/Message>-->' 
}

Get-ChildItem . *.vcxproj -rec | ForEach-Object { 
    Replace-TextInFile -FilePath $_.FullName -Pattern '/Command>' -Replacement '/Command>-->' 
}

Get-ChildItem . *.vcxproj -rec | ForEach-Object { 
    Replace-TextInFile -FilePath $_.FullName -Pattern '--check-stamp-file' -Replacement '' 
}