{
    files = {
        "examples/dev1.cpp"
    },
    depfiles_gcc = "build/.objs/dev/macosx/arm64/release/examples/__cpp_dev1.cpp.cpp:   examples/dev1.cpp include/geomath/PyramidShape.hpp   include/geomath/ShapeInterface.hpp include/geomath/types/Face.hpp   include/geomath/types/Vector.hpp include/geomath/CubeShape.hpp\
",
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