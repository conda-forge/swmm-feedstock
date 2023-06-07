mkdir build && cd build

cmake -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_INSTALL_PREFIX=${PREFIX} \
      CMakeLists.txt \
      ${SRC_DIR}

make install -j${CPU_COUNT} ${VERBOSE_CM}

mkdir -p ${PREFIX}/lib
mv ${PREFIX}/bin/*${SHLIB_EXT}* ${PREFIX}/lib
