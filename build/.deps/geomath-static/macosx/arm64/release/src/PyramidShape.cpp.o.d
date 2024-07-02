{
    files = {
        "src/PyramidShape.cpp"
    },
    values = {
        "/Library/Developer/CommandLineTools/usr/bin/clang",
        {
            "-Qunused-arguments",
            "-isysroot",
            "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk",
            "-fvisibility=hidden",
            "-fvisibility-inlines-hidden",
            "-Ofast",
            "-std=c++11",
            "-Iinclude"
        }
    },
    depfiles_gcc = "build/.objs/geomath-static/macosx/arm64/release/src/__cpp_PyramidShape.cpp.cpp:   src/PyramidShape.cpp include/geomath/PyramidShape.hpp   include/geomath/ShapeInterface.hpp include/geomath/types/Face.hpp   include/geomath/types/Vector.hpp\
"
}