mkdir %SRC_DIR%\build
cd %SRC_DIR%\build

set "CMAKE_GENERATOR=Ninja"
cmake -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_INSTALL_PREFIX=%PREFIX% ^
      CMakeLists.txt ^
      %SRC_DIR%
if errorlevel 1 exit /b 1

ninja
if errorlevel 1 exit 1

@REM cmake --build . --config %BUILD_TYPE% --target install
@REM if errorlevel 1 exit /b 1
