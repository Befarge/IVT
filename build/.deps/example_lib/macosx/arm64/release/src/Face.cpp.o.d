{
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
    depfiles_gcc = "build/.objs/example_lib/macosx/arm64/release/src/__cpp_Face.cpp.cpp:   src/Face.cpp include/geomath/types/Face.hpp   include/geomath/types/Vector.hpp\
",
    files = {
        "src/Face.cpp"
    }
}