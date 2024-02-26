rm -r cmbuild
mkdir cmbuild
cd cmbuild
emcmake cmake ..
emmake make -j$(sysctl -n hw.ncpu)
cd ..
if [ -f build/index.html ]; then
    rm build/index.html
fi
if [ ! -d build ]; then
    mkdir build
fi
cp cmbuild/index.html build/index.html