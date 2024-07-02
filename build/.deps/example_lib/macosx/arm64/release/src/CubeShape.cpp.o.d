{
    depfiles_gcc = "build/.objs/example_lib/macosx/arm64/release/src/__cpp_CubeShape.cpp.cpp:   src/CubeShape.cpp include/geomath/types/Vector.hpp   include/geomath/CubeShape.hpp include/geomath/ShapeInterface.hpp   include/geomath/types/Face.hpp\
",
    files = {
        "src/CubeShape.cpp"
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
    }
}