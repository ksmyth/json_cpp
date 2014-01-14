set TARGET_ARCH=x64
c:\python27\python \Python27\Scripts\scons.py platform=msvc100 runtime=MD
c:\python27\python \Python27\Scripts\scons.py platform=msvc100 runtime=MDd
mkdir x64
move libs x64
rd /s/q buildscons
set TARGET_ARCH=x86
c:\python27\python \Python27\Scripts\scons.py platform=msvc100 runtime=MD
c:\python27\python \Python27\Scripts\scons.py platform=msvc100 runtime=MDd
powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\jsoncpp.autopkg
powershell -ExecutionPolicy ByPass ipmo \"C:\Program Files (x86)\Outercurve Foundation\Modules\CoApp\CoApp.Powershell.Tools.dll\" ; Write-NuGetPackage .\jsoncpp-vc100.autopkg
