@echo off

REM Generate CLI and GUI wrappers that don't accept an appended archive

cl /Fe: t64n.exe /D_CONSOLE launcher.c
cl /Fe: w64n.exe launcher.c

REM Use `upx` to compress the executables

upx394w\upx -q t64n.exe -q
upx394w\upx -q w64n.exe -q

REM Uncomment the following lines to build APPENDED_ARCHIVE versions

REM cl /Fe: w64.exe  /DAPPENDED_ARCHIVE /DUSE_ENVIRONMENT launcher.c
REM cl /Fe: t64.exe  /D_CONSOLE /DAPPENDED_ARCHIVE /DUSE_ENVIRONMENT launcher.c

REM upx394w\upx -q t64.exe -q
REM upx394w\upx -q w64.exe -q

