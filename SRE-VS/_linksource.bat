@echo off

set batpath=%~dp0

cd %batpath%
echo Creating symlink at %cd%\Source pointing to ..\..\SRE-2

mklink /j Source ..\..\SRE-2

:quit