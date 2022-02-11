# Autogenerated wrapper script for LLVM_jll for i686-w64-mingw32-cxx11
export ld64_lld, ld64_lld_darwinnew, ld_lld, liblto, llc, lld, lld_link, llvm_mca, opt, wasm_ld

using Zlib_jll
using libLLVM_jll
JLLWrappers.@generate_wrapper_header("LLVM")
JLLWrappers.@declare_library_product(liblto, "libLTO.dll")
JLLWrappers.@declare_executable_product(ld64_lld)
JLLWrappers.@declare_executable_product(ld64_lld_darwinnew)
JLLWrappers.@declare_executable_product(ld_lld)
JLLWrappers.@declare_executable_product(llc)
JLLWrappers.@declare_executable_product(lld)
JLLWrappers.@declare_executable_product(lld_link)
JLLWrappers.@declare_executable_product(llvm_mca)
JLLWrappers.@declare_executable_product(opt)
JLLWrappers.@declare_executable_product(wasm_ld)
function __init__()
    JLLWrappers.@generate_init_header(Zlib_jll, libLLVM_jll)
    JLLWrappers.@init_library_product(
        liblto,
        "bin\\libLTO.dll",
        nothing,
    )

    JLLWrappers.@init_executable_product(
        ld64_lld,
        "tools\\ld64.lld.exe",
    )

    JLLWrappers.@init_executable_product(
        ld64_lld_darwinnew,
        "tools\\ld64.lld.darwinnew.exe",
    )

    JLLWrappers.@init_executable_product(
        ld_lld,
        "tools\\ld.lld.exe",
    )

    JLLWrappers.@init_executable_product(
        llc,
        "tools\\llc.exe",
    )

    JLLWrappers.@init_executable_product(
        lld,
        "tools\\lld.exe",
    )

    JLLWrappers.@init_executable_product(
        lld_link,
        "tools\\lld-link.exe",
    )

    JLLWrappers.@init_executable_product(
        llvm_mca,
        "tools\\llvm-mca.exe",
    )

    JLLWrappers.@init_executable_product(
        opt,
        "tools\\opt.exe",
    )

    JLLWrappers.@init_executable_product(
        wasm_ld,
        "tools\\wasm-ld.exe",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
