{
    depfiles_gcc = "build/.objs/example_lib/macosx/arm64/release/src/__cpp_Shape.cpp.cpp:   src/Shape.cpp src/Shape.h\
",
    values = {
        "/Library/Developer/CommandLineTools/usr/bin/clang",
        {
            "-Qunused-arguments",
            "-isysroot",
            "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk",
            "-std=c++11"
        }
    },
    files = {
        "src/Shape.cpp"
    }
}