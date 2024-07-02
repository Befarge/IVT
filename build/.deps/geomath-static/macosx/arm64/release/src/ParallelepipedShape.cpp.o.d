{
    files = {
        "src/ParallelepipedShape.cpp"
    },
    depfiles_gcc = "build/.objs/geomath-static/macosx/arm64/release/src/__cpp_ParallelepipedShape.cpp.cpp:   src/ParallelepipedShape.cpp include/geomath/ParallelepipedShape.hpp   include/geomath/ShapeInterface.hpp include/geomath/types/Face.hpp   include/geomath/types/Vector.hpp\
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