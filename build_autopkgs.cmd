Setlocal EnableDelayedExpansion

set TARGET_ARCH=amd64
c:\python27\python \Python27\Scripts\scons.py platform=msvc140 runtime=MD  || exit /b !ERRORLEVEL!
c:\python27\python \Python27\Scripts\scons.py platform=msvc140 runtime=MDd || exit /b !ERRORLEVEL!
mkdir x64
move libs x64
rd /s/q buildscons
set TARGET_ARCH=x86
c:\python27\python \Python27\Scripts\scons.py platform=msvc140 runtime=MD  || exit /b !ERRORLEVEL!
c:\python27\python \Python27\Scripts\scons.py platform=msvc140 runtime=MDd || exit /b !ERRORLEVEL!
rem powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\jsoncpp.autopkg
rem powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\jsoncpp-vc100.autopkg
powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\jsoncpp-vc140.autopkg
