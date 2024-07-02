{
    files = {
        "examples/dev.cpp"
    },
    values = {
        "/Library/Developer/CommandLineTools/usr/bin/clang",
        {
            "-Qunused-arguments",
            "-isysroot",
            "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk",
            "-std=c++11",
            "-Iinclude"
        }
    },
    depfiles_gcc = "build/.objs/dev/macosx/arm64/release/examples/__cpp_dev.cpp.cpp:   examples/dev.cpp include/geomath/CubeShape.hpp   include/geomath/ShapeInterface.hpp include/geomath/types/Face.hpp   include/geomath/types/Vector.hpp\
"
}