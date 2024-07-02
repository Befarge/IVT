{
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
    depfiles_gcc = "build/.objs/geomath-static/macosx/arm64/release/src/types/__cpp_Face.cpp.cpp:   src/types/Face.cpp include/geomath/types/Face.hpp   include/geomath/types/Vector.hpp\
",
    files = {
        "src/types/Face.cpp"
    }
}