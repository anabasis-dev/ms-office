Start-Process -FilePath "$PSScriptRoot\..\setup.exe" -ArgumentList "/configure `"$PSScriptRoot\..\XML\EW.xml`"" -Wait