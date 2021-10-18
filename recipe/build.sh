
mkdir build
pushd build

export LD=$LD_GOLD

cmake .. -DCMAKE_INSTALL_PREFIX=$PREFIX -DCMAKE_INSTALL_LIBDIR=lib -DCMAKE_POSITION_INDEPENDENT_CODE=ON
make
make install

popd
rm -rf build
