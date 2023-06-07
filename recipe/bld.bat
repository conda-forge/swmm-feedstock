mkdir %SRC_DIR%\build
cd %SRC_DIR%\build

set "CMAKE_GENERATOR=NMake Makefiles"
cmake -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_INSTALL_PREFIX=%PREFIX% ^
      CMakeLists.txt ^
      %SRC_DIR%
if errorlevel 1 exit /b 1

cmake --build . --config %BUILD_TYPE% --target install
if errorlevel 1 exit /b 1
