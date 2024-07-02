{
    depfiles_gcc = "build/.objs/example_lib/macosx/arm64/release/src/__cpp_PyramidShape.cpp.cpp:   src/PyramidShape.cpp include/geomath/PyramidShape.hpp   include/geomath/ShapeInterface.hpp include/geomath/types/Face.hpp   include/geomath/types/Vector.hpp\
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
    },
    files = {
        "src/PyramidShape.cpp"
    }
}