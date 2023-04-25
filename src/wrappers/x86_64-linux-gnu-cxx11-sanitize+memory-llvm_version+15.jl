# Autogenerated wrapper script for LLVM_jll for x86_64-linux-gnu-cxx11-sanitize+memory-llvm_version+15
export liblto, llc, llvm_mca, opt

using Zlib_jll
using libLLVM_jll
JLLWrappers.@generate_wrapper_header("LLVM")
JLLWrappers.@declare_library_product(liblto, "libLTO.so.15jl")
JLLWrappers.@declare_executable_product(llc)
JLLWrappers.@declare_executable_product(llvm_mca)
JLLWrappers.@declare_executable_product(opt)
function __init__()
    JLLWrappers.@generate_init_header(Zlib_jll, libLLVM_jll)
    JLLWrappers.@init_library_product(
        liblto,
        "lib/libLTO.so",
        nothing,
    )

    JLLWrappers.@init_executable_product(
        llc,
        "tools/llc",
    )

    JLLWrappers.@init_executable_product(
        llvm_mca,
        "tools/llvm-mca",
    )

    JLLWrappers.@init_executable_product(
        opt,
        "tools/opt",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
