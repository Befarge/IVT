{
    files = {
        "build/.objs/dev/macosx/arm64/release/examples/dev1.cpp.o",
        "build/macosx/arm64/release/libgeomath-static.a"
    },
    values = {
        "/Library/Developer/CommandLineTools/usr/bin/clang++",
        {
            "-isysroot",
            "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk",
            "-lz",
            "-Lbuild/macosx/arm64/release",
            "-lgeomath-static"
        }
    }
}