mkdir %SRC_DIR%\build
cd %SRC_DIR%\build

set "CMAKE_GENERATOR=NMake Makefiles"
cmake.exe -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$PREFIX CMakeLists.txt %SRC_DIR%
if errorlevel 1 exit /b 1

cmake.exe --build %SRC_DIR% --config Release
if errorlevel 1 exit /b 1

if not exist "%PREFIX%\" mkdir "%PREFIX%"
COPY bin\* %PREFIX%\
