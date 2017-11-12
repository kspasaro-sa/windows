set query=reg query "HKLM\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full" /v "InstallPath"
for /f "tokens=*" %%i IN (' %query% ') DO SET result=%%i
set result=( %result% )
setlocal enabledelayedexpansion
for %%i in %result% do (
  set msbuild_dir=%%i
)
echo %msbuild_dir%
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /f /v Path /t REG_SZ /d "%PATH%%msbuild_dir%"
echo %PATH%