# Autogenerated wrapper script for LLVM_jll for armv7l-linux-gnueabihf-cxx11
export liblto, llc, opt

using libLLVM_jll
JLLWrappers.@generate_wrapper_header("LLVM")
JLLWrappers.@declare_library_product(liblto, "libLTO.so.11jl")
JLLWrappers.@declare_executable_product(llc)
JLLWrappers.@declare_executable_product(opt)
function __init__()
    JLLWrappers.@generate_init_header(libLLVM_jll)
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
        opt,
        "tools/opt",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
