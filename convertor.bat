@echo off
::Check/set the following vars
set targetDir=""
set jdkPath=%JAVA_HOME%
set verbose=true
set fileMask=*.properties

::Local vars
set /a convertedFiles=0
set /a totalFiles=0
set /a ignoredFiles=0
for /r %targetDir% %%a in ("%fileMask%") do (
  findstr "\u" "%%a" > 2 && (
    ::Not converted yet
    if %verbose% == true echo %%a
    "%jdkPath%\bin\native2ascii.exe" "%%a" "%%a" -reverse -encoding UTF8
    set /a convertedFiles=convertedFiles+1
  ) || (
    ::Already converted
    set /a ignoredFiles=ignoredFiles+1

  )
  set /a totalFiles=totalFiles+1
)
echo %totalFiles% files processed
echo %ignoredFiles% files ignored
echo %convertedFiles% files converted