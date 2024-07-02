{
    files = {
        "src/PrismShape.cpp"
    },
    depfiles_gcc = "build/.objs/geomath-static/macosx/arm64/release/src/__cpp_PrismShape.cpp.cpp:   src/PrismShape.cpp include/geomath/PrismShape.hpp   include/geomath/ShapeInterface.hpp include/geomath/types/Face.hpp   include/geomath/types/Vector.hpp\
",
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
    }
}