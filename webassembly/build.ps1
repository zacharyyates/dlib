# clean the output folder
try {
    rmdir build -recurse -force
} catch {}

try {
    mkdir build
    cd build

    # use AVX and compile for x64
    cmake .. -G "Visual Studio 15 2017 Win64" -T host=x64 -DUSE_AVX_INSTRUCTIONS=ON
    cmake --build . --config Release
} finally {
    cd ..
}