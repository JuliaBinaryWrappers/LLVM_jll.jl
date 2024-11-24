# `LLVM_jll.jl` (v19.1.1+1)

[![deps](https://juliahub.com/docs/LLVM_jll/deps.svg)](https://juliahub.com/ui/Packages/General/LLVM_jll/)

This is an autogenerated package constructed using [`BinaryBuilder.jl`](https://github.com/JuliaPackaging/BinaryBuilder.jl).

The originating [`build_tarballs.jl`](https://github.com/JuliaPackaging/Yggdrasil/blob/3dc631822765955234d14a7bb172f43c09ace82d/L/LLVM/LLVM@19/build_tarballs.jl) script can be found on [`Yggdrasil`](https://github.com/JuliaPackaging/Yggdrasil/), the community build tree.

## Bug Reports

If you have any issue, please report it to the Yggdrasil [bug tracker](https://github.com/JuliaPackaging/Yggdrasil/issues).

## Documentation

For more details about JLL packages and how to use them, see `BinaryBuilder.jl` [documentation](https://docs.binarybuilder.org/stable/jll/).

## Platforms

`LLVM_jll.jl` is available for the following platforms:

* `macOS aarch64 {llvm_version=19.asserts}` (`aarch64-apple-darwin-llvm_version+19.asserts`)
* `Linux aarch64 {cxxstring_abi=cxx03, libc=glibc, llvm_version=19.asserts}` (`aarch64-linux-gnu-cxx03-llvm_version+19.asserts`)
* `Linux aarch64 {cxxstring_abi=cxx11, libc=glibc, llvm_version=19.asserts}` (`aarch64-linux-gnu-cxx11-llvm_version+19.asserts`)
* `Linux aarch64 {cxxstring_abi=cxx03, libc=musl, llvm_version=19.asserts}` (`aarch64-linux-musl-cxx03-llvm_version+19.asserts`)
* `Linux aarch64 {cxxstring_abi=cxx11, libc=musl, llvm_version=19.asserts}` (`aarch64-linux-musl-cxx11-llvm_version+19.asserts`)
* `FreeBSD aarch64 {llvm_version=19.asserts}` (`aarch64-unknown-freebsd-llvm_version+19.asserts`)
* `Linux armv6l {call_abi=eabihf, cxxstring_abi=cxx03, libc=glibc, llvm_version=19.asserts}` (`armv6l-linux-gnueabihf-cxx03-llvm_version+19.asserts`)
* `Linux armv6l {call_abi=eabihf, cxxstring_abi=cxx11, libc=glibc, llvm_version=19.asserts}` (`armv6l-linux-gnueabihf-cxx11-llvm_version+19.asserts`)
* `Linux armv6l {call_abi=eabihf, cxxstring_abi=cxx03, libc=musl, llvm_version=19.asserts}` (`armv6l-linux-musleabihf-cxx03-llvm_version+19.asserts`)
* `Linux armv6l {call_abi=eabihf, cxxstring_abi=cxx11, libc=musl, llvm_version=19.asserts}` (`armv6l-linux-musleabihf-cxx11-llvm_version+19.asserts`)
* `Linux armv7l {call_abi=eabihf, cxxstring_abi=cxx03, libc=glibc, llvm_version=19.asserts}` (`armv7l-linux-gnueabihf-cxx03-llvm_version+19.asserts`)
* `Linux armv7l {call_abi=eabihf, cxxstring_abi=cxx11, libc=glibc, llvm_version=19.asserts}` (`armv7l-linux-gnueabihf-cxx11-llvm_version+19.asserts`)
* `Linux armv7l {call_abi=eabihf, cxxstring_abi=cxx03, libc=musl, llvm_version=19.asserts}` (`armv7l-linux-musleabihf-cxx03-llvm_version+19.asserts`)
* `Linux armv7l {call_abi=eabihf, cxxstring_abi=cxx11, libc=musl, llvm_version=19.asserts}` (`armv7l-linux-musleabihf-cxx11-llvm_version+19.asserts`)
* `Linux i686 {cxxstring_abi=cxx03, libc=glibc, llvm_version=19.asserts}` (`i686-linux-gnu-cxx03-llvm_version+19.asserts`)
* `Linux i686 {cxxstring_abi=cxx11, libc=glibc, llvm_version=19.asserts}` (`i686-linux-gnu-cxx11-llvm_version+19.asserts`)
* `Windows i686 {cxxstring_abi=cxx03, llvm_version=19.asserts}` (`i686-w64-mingw32-cxx03-llvm_version+19.asserts`)
* `Windows i686 {cxxstring_abi=cxx11, llvm_version=19.asserts}` (`i686-w64-mingw32-cxx11-llvm_version+19.asserts`)
* `Linux powerpc64le {cxxstring_abi=cxx03, libc=glibc, llvm_version=19.asserts}` (`powerpc64le-linux-gnu-cxx03-llvm_version+19.asserts`)
* `Linux powerpc64le {cxxstring_abi=cxx11, libc=glibc, llvm_version=19.asserts}` (`powerpc64le-linux-gnu-cxx11-llvm_version+19.asserts`)
* `macOS x86_64 {llvm_version=19.asserts}` (`x86_64-apple-darwin-llvm_version+19.asserts`)
* `Linux x86_64 {cxxstring_abi=cxx03, libc=glibc, llvm_version=19.asserts}` (`x86_64-linux-gnu-cxx03-llvm_version+19.asserts`)
* `Linux x86_64 {cxxstring_abi=cxx11, libc=glibc, llvm_version=19.asserts}` (`x86_64-linux-gnu-cxx11-llvm_version+19.asserts`)
* `Linux x86_64 {cxxstring_abi=cxx11, libc=glibc, llvm_version=19.asserts, sanitize=memory}` (`x86_64-linux-gnu-cxx11-sanitize+memory-llvm_version+19.asserts`)
* `Linux x86_64 {cxxstring_abi=cxx03, libc=musl, llvm_version=19.asserts}` (`x86_64-linux-musl-cxx03-llvm_version+19.asserts`)
* `Linux x86_64 {cxxstring_abi=cxx11, libc=musl, llvm_version=19.asserts}` (`x86_64-linux-musl-cxx11-llvm_version+19.asserts`)
* `FreeBSD x86_64 {llvm_version=19.asserts}` (`x86_64-unknown-freebsd-llvm_version+19.asserts`)
* `Windows x86_64 {cxxstring_abi=cxx03, llvm_version=19.asserts}` (`x86_64-w64-mingw32-cxx03-llvm_version+19.asserts`)
* `Windows x86_64 {cxxstring_abi=cxx11, llvm_version=19.asserts}` (`x86_64-w64-mingw32-cxx11-llvm_version+19.asserts`)

## Dependencies

The following JLL packages are required by `LLVM_jll.jl`:

* [`Zlib_jll`](https://github.com/JuliaBinaryWrappers/Zlib_jll.jl)
* [`libLLVM_jll`](https://github.com/JuliaBinaryWrappers/libLLVM_jll.jl)

## Products

The code bindings within this package are autogenerated from the following `Products`:

* `LibraryProduct`: `liblto`
* `ExecutableProduct`: `llc`
* `ExecutableProduct`: `llvm_mca`
* `ExecutableProduct`: `opt`
